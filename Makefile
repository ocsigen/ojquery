
##----------------------------------------------------------------------
## DISCLAIMER
##
## This file contains the rules to make an ocsigen package. The project
## is configured through the variables in the file Makefile.options.
##----------------------------------------------------------------------

include Makefile.options

##----------------------------------------------------------------------
##			      Internals

SYNTAX     := -syntax camlp4o

## Required binaries
OCAMLFIND  := ocamlfind
OCAMLDEP   := $(OCAMLFIND) ocamldep $(SYNTAX)
OCAMLC     := $(OCAMLFIND) ocamlc

BUILDDIR := _build

ifeq ($(DEBUG),yes)
  GENERATE_DEBUG ?= -g
endif

##----------------------------------------------------------------------
## General

.PHONY: all byte
all: byte
byte:: $(LIBDIR)/${PKG_NAME}.cma

##----------------------------------------------------------------------
## Aux

# Use `eliomdep -sort' only in OCaml>4
ifeq ($(shell ocamlc -version|cut -c1),4)
ocamldep=$(shell $(OCAMLDEP) -sort $(1) $(filter %.eliom %.ml,$(2))))
else
ocamldep=$(3)
endif
objs=$(patsubst %.ml,$(1)/%.$(2),$(filter %.ml,$(3)))
depsort=$(call objs,$(1),$(2),$(call ocamldep,$(3),$(4)))

$(LIBDIR):
	mkdir $(LIBDIR)

##----------------------------------------------------------------------
## Client side compilation

## make it more elegant ?
DIRS     := $(shell echo $(foreach f, $(FILES), $(dir $(f))) |  tr ' ' '\n' | sort -u | tr '\n' ' ')
DEP_DIRS := ${addprefix -I ,${DIRS}}
INC_DIRS := ${addprefix -I $(BUILDDIR)/,${DIRS}}

INC  := ${addprefix -package ,${PACKAGES}}

OBJS := $(filter %.ml, $(FILES))
OBJS := $(patsubst %.ml,${BUILDDIR}/%.cmo, ${OBJS})

$(BUILDDIR):
	mkdir -p $(BUILDDIR) $(addprefix $(BUILDDIR)/,$(DIRS))

$(LIBDIR)/$(PKG_NAME).cma: $(BUILDDIR) $(call objs,$(BUILDDIR),cmo,$(FILES)) | $(LIBDIR)
	ocamlc -a -o $@ $(GENERATE_DEBUG) \
          $(call depsort,$(BUILDDIR),cmo,$(INC),$(FILES))

${BUILDDIR}/%.cmi: %.mli
	${OCAMLC} -c ${SYNTAX} ${INC} ${INC_DIRS} $(GENERATE_DEBUG) $< -o $@

${BUILDDIR}/%.cmo: %.ml
	${OCAMLC} -c ${SYNTAX} ${INC} ${INC_DIRS} $(GENERATE_DEBUG) $< -o $@

##----------------------------------------------------------------------
## Installation

META: META.in
	sed -e 's#@@PKG_NAME@@#$(PKG_NAME)#g' \
		-e 's#@@PKG_VERS@@#$(PKG_VERS)#g' \
		-e 's#@@PKG_DESC@@#$(PKG_DESC)#g' \
		-e 's#@@REQUIRES@@#$(PACKAGES)#g' \
		-e 's#@@ARCHIVES_BYTE@@#$(PKG_NAME).cma#g' \
		$< > $@

CMI=$(wildcard $(addsuffix /*.cmi,$(addprefix $(BUILDDIR)/,$(DIRS))))
install: all META
	$(OCAMLFIND) install $(PKG_NAME) META $(CMI) $(LIBDIR)/$(PKG_NAME).cma

uninstall:
	$(OCAMLFIND) remove $(PKG_NAME)

reinstall: uninstall install

##----------------------------------------------------------------------
## Dependencies

DEPSDIR := _deps

ifneq ($(MAKECMDGOALS),distclean)
ifneq ($(MAKECMDGOALS),clean)
ifneq ($(MAKECMDGOALS),depend)
    include .depend
endif
endif
endif

.depend: $(patsubst %,$(DEPSDIR)/%,$(FILES))
	cat $^ | sed 's#\([a-zA-Z_.\/]\{1,\}\)#_build\/\1#g' > $@

$(DEPSDIR)/%: % | $(DEPSDIR)
	$(OCAMLDEP) -syntax camlp4o $(INC) $(DEP_DIRS) $< > $@

$(DEPSDIR):
	mkdir -p $@
	mkdir -p $(addprefix $@/, ${DIRS})

##----------------------------------------------------------------------
## Clean up

clean:
	-rm -f *.cm[ioax] *.cmxa *.cmxs *.o *.a *.annot
	-rm -f *.type_mli
	-rm -f META
	-rm -rf ${BUILDDIR} ${LIBDIR}

distclean: clean
	-rm -rf $(DEPSDIR) .depend

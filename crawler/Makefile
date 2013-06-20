SRC_CRAWLER= 	to_goji.ml\
	user_defined.ml\
	jQuery_crawler.ml


SRC_XML= xml_utils.ml

PACKAGES= -package xmlm,str xmlm.cma str.cma

NAME= crawler

CMP= ocamlc

all: crawler

re: clean all

crawler:
	ocamlfind $(CMP) $(PACKAGES) $(SRC_XML) $(SRC_CRAWLER) -o $(NAME)

clean:
	rm -f *.cmi *.cmo
	rm -f *~
	rm -f \#*
	rm -f $(NAME)
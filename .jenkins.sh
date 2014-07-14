
opam pin add --no-action ojquery .
opam install --deps-only ojquery
opam install --verbose ojquery

do_build_doc () {
  make wikidoc
  cp -Rf _build/ojquery-api.wikidocdir/*.wiki ${API_DIR}
}

do_remove () {
  opam remove --verbose ojquery
}

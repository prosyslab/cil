(lang dune 2.7)
(name prosys-cil)
(implicit_transitive_deps false)
(generate_opam_files true)
(version 1.7.4)
(source (github prosyslab/cil))
(authors "George Necula" "Scott McPeak" "Westley Weimer" "Gabriel Kerneis" "Ralf Vogler" "Michael Schwarz" "Simmo Saan")
(maintainers "Kihong Heo")
(license "BSD-3-Clause")

(package
  (name prosys-cil)
  (synopsis "A front-end for the C programming language that facilitates program analysis and transformation")
  (depends
    (ocaml (>= 4.05.0))
    (ocamlfind :with-test)
    zarith
    (hevea :with-doc)
    dune
    dune-configurator
    (odoc :with-doc)
    stdlib-shims
    conf-perl
    cppo
    conf-gcc
  )
  (conflicts cil) ; only because we both install the cilly executable
)

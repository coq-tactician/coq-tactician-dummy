(lang dune 2.5)
(name coq-tactician-dummy)
(using coq 0.2)

(generate_opam_files true)

(source (github coq-tactician/coq-tactician-dummy))
(homepage "https://coq-tactician.github.io")
(authors "Lasse Blaauwbroek <lasse@blaauwbroek.eu>")
(maintainers "Lasse Blaauwbroek <lasse@blaauwbroek.eu>")

(package
  (name coq-tactician-dummy)
  (synopsis "A dummy implementation of Tactician")
  (description "This package acts as a stand-in for the Tactician plugin (`coq-tactician`).
It provides short files that replicate Tactician's tactics without actually
doing much. This is useful when you have a development that uses Tactician
that you want to package up. In most situations, it is not a good idea to
have your package directly depend on `coq-tactician`. Instead you should load
Tactician through your `coqrc` file. In order for your package to be compilable
by others, your package can depend on this package. Just add
`From Tactician Require Import Ltac1Dummy` in your development and you are good
to go.")
  (license MIT)
  (depends (coq (and (>= 8.6.1) (< 8.17~)))))

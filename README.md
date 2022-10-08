# A dummy version of Tactician

For the main repository, see [coq-tactician](https://github.com/coq-tactician/coq-tactician)

This package acts as a stand-in for the Tactician plugin (`coq-tactician`).
It provides short files that replicate Tactician's tactics without actually
doing much. This is useful when you have a development that uses Tactician
that you want to package up. In most situations, it is not a good idea to
have your package directly depend on `coq-tactician`. Instead you should load
Tactician through your `coqrc` file. In order for your package to be compilable
by others, your package can depend on this package. Just add
`From Tactician Require Import Ltac1Dummy` in your development and you are good
to go.

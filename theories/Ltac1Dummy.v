Declare ML Module "ltac_plugin".

(* These notations are put on a lower level so that the real Tactician can override it.
   Note that tactic redefinition does not work, because this module might be loaded _later_
   than the real Tactician. *)
Tactic Notation (at level 4) "search" "with" "cache" tactic3(t) := solve [t] || (fail
  "A previously synthesized proof script by Tactician has failed."
  "In order to re-synthesize, the Tactician plugin must be installed."
  "Check https://coq-tactician.github.io for instructions").

Tactic Notation (at level 4) "search" := fail
  "Tactic 'search' requires the Tactician plugin to be installed."
  "Check https://coq-tactician.github.io for instructions".

Tactic Notation (at level 4) "tactician" "ignore" tactic3(t) := t.

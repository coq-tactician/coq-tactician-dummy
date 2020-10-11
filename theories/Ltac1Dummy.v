Declare ML Module "ltac_plugin".

Ltac searcher := fail
  "A previously synthesized proof script by Tactician has failed."
  "In order to re-synthesize, the Tactician plugin must be installed."
  "Check https://coq-tactician.github.io for instructions".

Tactic Notation (at level 1) "search" "failing" tactic(t) := solve [t] || searcher.

Tactic Notation (at level 1) "search" := fail 
  "Tactic 'search' requires the Tactician plugin to be installed."
  "Check https://coq-tactician.github.io for instructions".

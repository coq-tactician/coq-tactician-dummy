From Ltac2 Require Import Control Notations Ltac1.

Ltac2 rec prove_with' tacs :=
match tacs with
| [] => ()
| t::tacs' => focus 1 1 t; prove_with' tacs'
end.

Ltac searcher := fail
  "A previously synthesized proof script by Tactician has failed."
  "In order to re-synthesize, the Tactician plugin must be installed."
  "Check https://coq-tactician.github.io for instructions".

Ltac2 prove_with tacs s :=
plus 
  (fun () => complete (fun () => prove_with' tacs))
  (fun e => run s).

(* A hack to work around https://github.com/coq/coq/issues/11866 *)
Ltac2 Notation "-" tacs(list0(thunk(self), "-")) "--|" := prove_with tacs.

Tactic Notation (at level 4) "search" "failing" tactic(t) := t searcher.

Tactic Notation (at level 4) "search" := fail 
  "Tactic 'search' requires the Tactician plugin to be installed."
  "Check https://coq-tactician.github.io for instructions".

Tactic Notation (at level 4) "suggest" := idtac
  "Tactic 'suggest' requires the Tactician plugin to be installed."
  "Check https://coq-tactician.github.io for instructions.".
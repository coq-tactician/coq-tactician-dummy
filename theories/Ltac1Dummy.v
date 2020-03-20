From Ltac2 Require Import Control Notations.

Ltac2 rec prove_with' tacs :=
match tacs with
| [] => ()
| t::tacs' => focus 1 1 t; prove_with' tacs'
end.

Ltac2 prove_with tacs reprover :=
plus 
  (fun () => complete (fun () => prove_with' tacs))
  (fun e => reprover).

Ltac2 dummy_reprover tacs := prove_with tacs ltac1:(fail 
    "A previously synthesized proof script by Tactician has failed."
    "In order to re-synthesize, the Tactician plugin must be installed."
    "Check https://coq-tactician.github.io for instructions").

Ltac2 Notation "[#" tacs(list0(thunk(self), "#")) "#]" : 1 := dummy_reprover tacs.

Tactic Notation (at level 4) "search" "failing" tactic(t) := t.

Tactic Notation (at level 4) "search" :=
fail "Tactic 'search' requires the Tactician plugin to be installed."
     "Check https://coq-tactician.github.io for instructions".

Tactic Notation (at level 4) "suggest" :=
idtac "Tactic 'suggest' requires the Tactician plugin to be installed."
      "Check https://coq-tactician.github.io for instructions.".
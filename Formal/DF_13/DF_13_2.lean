import Mathlib.RingTheory.Polynomial.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.RingTheory.AdjoinRoot



open Polynomial Complex

/--
DF_13_2_5 : $p(x) = x^3-2$ and $q(x)=x^3-3$ are irreducible in $ℚ[i]$.

Contributor: Yeachan Park
-/
noncomputable def poly : ℚ[X] := X^2 + 1
abbrev Q_i := AdjoinRoot poly

theorem DF_13_2_5 : Irreducible (X^3 - C 2 : Q_i[X]) ∧  Irreducible (X^3 - C 3 : Q_i[X]) := by
  sorry

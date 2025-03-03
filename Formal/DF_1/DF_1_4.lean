import Mathlib.Algebra.Field.Defs
import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs


variable {p : ℕ} [Fact (Nat.Prime p)]
instance : Field (ZMod p) := ZMod.instField p

/--
$\mathrm{GL}_{2}(\mathbb{F}_{2})$ has 6 elements.

Contributor: Seewoo Lee
-/
theorem DF_1_4_1 : Nat.card (Matrix.GeneralLinearGroup (Fin 2) (ZMod 2)) = 6 := by
  sorry

/--
$\mathrm{GL}_{2}(\mathbb{F}_{p})$ has $p^{4} - p^{3} - p^{2} + p$ elements.

Contributor: Seewoo Lee
-/
theorem DF_1_4_7 : Nat.card (Matrix.GeneralLinearGroup (Fin 2) (ZMod p)) = p^4 - p^3 - p^2 + p := by
  sorry

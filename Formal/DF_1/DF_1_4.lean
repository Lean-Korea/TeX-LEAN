import Mathlib.FieldTheory.Finite.GaloisField
import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs

/--
$\mathrm{GL}_{2}(\mathbb{F}_{2})$ has 6 elements.

Contributor: Seewoo Lee
-/
theorem DF_1_4_1 : Nat.card (Matrix.GeneralLinearGroup (Fin 2) (GaloisField 2 1)) = 6 := by sorry

/--
For a prime $p$, $\mathrm{GL}_{2}(\mathbb{F}_{p})$ has $p^{4} - p^{3} - p^{2} + p$ elements.

Contributor: Seewoo Lee
-/
theorem DF_1_4_7 {p : ℕ} [Fact (Nat.Prime p)] : Nat.card (Matrix.GeneralLinearGroup (Fin 2) (GaloisField p 1))
    = p^4 - p^3 - p^2 + p := by
  sorry

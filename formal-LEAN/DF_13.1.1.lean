import Mathlib
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.Algebra.Ring.Basic


-- DF_13_1_1 
-- Show that $p(x) = x^3 +9x+6$ is irreducible in $ℚ[x]$.
noncomputable def p1 : Polynomial ℚ := Polynomial.X ^ 3 + 9 * Polynomial.X + 6
theorem DF_13_1_1 : Irreducible p1 := 
sorry

-- DF_13_1_2 
-- Show that $p(x) = x^3 -2x-2$ is irreducible in $ℚ[x]$.
noncomputable def p2 : Polynomial ℚ := Polynomial.X ^ 3 - 2 * Polynomial.X - 2
theorem DF_13_1_2 : Irreducible p2 := 
sorry


-- DF_13_1_3 
-- Show that $p(x) = x^3 + x + 1$ is irreducible in $𝔽_2[x]$.
def F₂ := ZMod 2
instance : Field F₂ := ZMod.instField 2 
noncomputable def p3 : Polynomial F₂ := Polynomial.X ^ 3 + Polynomial.X + 1
theorem DF_13_1_3 : Irreducible p3 := 
sorry

-- DF_13_1_5 
variable {α : ℚ} {f : Polynomial ℤ}
variable (monic_f : f.Monic) (α_root : (f.map (Int.castRingHom ℚ)).eval α = 0)
theorem DF_13_1_35 : ∃ (n : ℤ), α = n := sorry

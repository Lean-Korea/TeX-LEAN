import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Prime.Defs

-- DF_13_1_1
-- Show that $p(x) = x^3 +9x+6$ is irreducible in $ℚ[x]$.

noncomputable def p1 : Polynomial ℚ := Polynomial.X ^ 3 + 9 * Polynomial.X + 6

theorem DF_13_1_1 : Irreducible p1 := sorry

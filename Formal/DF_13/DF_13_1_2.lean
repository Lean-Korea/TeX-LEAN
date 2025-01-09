import Mathlib.Algebra.Order.Ring.Rat
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Prime.Defs

-- DF_13_1_2
-- Show that $p(x) = x^3 -2x-2$ is irreducible in $ℚ[x]$.

noncomputable def p2 : Polynomial ℚ := Polynomial.X ^ 3 - 2 * Polynomial.X - 2

theorem DF_13_1_2 : Irreducible p2 := sorry

import Mathlib
import Mathlib.Algebra.Polynomial.Basic

-- Define the polynomial p(x) = x^3 + 9x + 6 over ℚ
noncomputable def p : Polynomial ℚ := Polynomial.X ^ 3 + 9 * Polynomial.X + 6

-- Theorem: p(x) is irreducible in ℚ[x]
theorem p_irreducible : Irreducible p := 
sorry

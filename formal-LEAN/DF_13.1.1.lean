import Mathlib
import Mathlib.Algebra.Polynomial.Basic

-- Define the polynomial p1(x) = x^3 + 9x + 6 over ℚ
noncomputable def p1 : Polynomial ℚ := Polynomial.X ^ 3 + 9 * Polynomial.X + 6

-- Theorem: p1(x) is irreducible in ℚ[x]
theorem DF_13_1_1 : Irreducible p1 := 
sorry

-- Define the polynomial p2(x) = x^3 -2x -2 over ℚ
noncomputable def p2 : Polynomial ℚ := Polynomial.X ^ 3 - 2 * Polynomial.X - 2

-- Theorem: p2(x) is irreducible in ℚ[x]
theorem DF_13_1_2 : Irreducible p2 := 
sorry

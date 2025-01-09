import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Polynomial.Degree.Definitions
import Mathlib.Algebra.Polynomial.Eval.Defs


-- DF_13_1_5
-- Suppose $\alpha$ is a rational root of a monic polynomial in $\mathbb{Z}[x]$. Prove that $\alpha$ is an integer.

variable {α : ℚ} {f : Polynomial ℤ}

variable (monic_f : f.Monic) (α_root : (f.map (Int.castRingHom ℚ)).eval α = 0)

theorem DF_13_1_5 : ∃ (n : ℤ), α = n := sorry

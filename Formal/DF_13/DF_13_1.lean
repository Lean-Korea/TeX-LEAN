import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Prime.Defs
import Mathlib.Data.ZMod.Basic
import Mathlib.Algebra.Polynomial.Degree.Definitions
import Mathlib.Algebra.Polynomial.Eval.Defs

open scoped Polynomial

/--
$p(x) = x^3 + 9x + 6$ is irreducible in $\mathbb{Q}[x]$.

Contributor: Yeachan Park
-/
theorem DF_13_1_1 : Irreducible (X^3 + 9*X + 6 : Polynomial ℚ) := by
  sorry

/--
$p(x) = x^3 - 2x - 2$ is irreducible in $\mathbb{Q}[x]$.

Contributor: Yeachan Park
-/
theorem DF_13_1_2 : Irreducible (X^3 - 2*X - 2 : Polynomial ℚ) := by
  sorry

/--
$p(x) = x^3 + x + 1$ is irreducible in $\mathbb{F}_2[x]$.

Contributor: Yeachan Park
-/
theorem DF_13_1_3 : Irreducible (X^3 + X + 1 : Polynomial (ZMod 2)) := by
  sorry

/--
Suppose $\alpha$ is a rational root of a monic polynomial in $\mathbb{Z}[x]$. Then $\alpha$ is an integer.

Contributor: Yeachan Park
-/
theorem DF_13_1_5 {α : ℚ} {f : Polynomial ℤ}
    (monic_f : f.Monic) (α_root : (f.map (Int.castRingHom ℚ)).eval α = 0)
    : ∃ (n : ℤ), α = n := by
  sorry

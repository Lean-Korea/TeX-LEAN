import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Data.ZMod.Basic

-- DF_13_1_3
-- Show that $p(x) = x^3 + x + 1$ is irreducible in $𝔽_2[x]$.

def F₂ := ZMod 2

instance : Field F₂ := ZMod.instField 2

noncomputable def p3 : Polynomial F₂ := Polynomial.X ^ 3 + Polynomial.X + 1

theorem DF_13_1_3 : Irreducible p3 := sorry

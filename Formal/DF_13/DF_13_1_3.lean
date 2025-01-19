import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Data.ZMod.Basic


open Polynomial

-- DF_13_1_3
-- Show that $p(x) = x^3 + x + 1$ is irreducible in $𝔽_2[x]$.

def F₂ := ZMod 2

instance : Field F₂ := ZMod.instField 2

theorem DF_13_1_3 : Irreducible (X^3 + X + 1 : Polynomial F₂) := sorry

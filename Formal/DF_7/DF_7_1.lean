import Mathlib.Algebra.Ring.Units


variable {R : Type*} [Ring R]

/--
For a ring $R$ with $1$, $(-1)^{2} = 1$.

Contributor: Seewoo Lee
-/
theorem DF_7_1_1 : (-1 : R) ^ 2 = (1 : R) := by sorry

/--
For a ring $R$ with $1$, if $u$ is a unit, then $-u$ is also a unit.

Contributor: Seewoo Lee
-/
theorem DF_7_1_2 (u : R) : IsUnit u → IsUnit (-u) := by sorry

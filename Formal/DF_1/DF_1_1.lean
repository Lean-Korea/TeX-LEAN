import Mathlib.Algebra.Group.Basic

/--
Let $x$ and $y$ be elements of a group $G$. Then $xy = yx$ if and only if $y^{-1} x y = x$.

Contributor: Jaeseong Heo
-/
variable {G : Type*} [Group G]

theorem DF_1_1_18 (x y : G) : x * y = y * x ↔ y⁻¹ * x * y = x := by sorry
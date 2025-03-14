import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.SetTheory.Cardinal.Finite

/--
A group $G$ cannot have a subgroup $H$ with $|H|=n-1$, where $n=|G|>2$.

Contributor: Byung-Hak Hwang
-/
theorem DF_2_1_5 [Group G] (h : Nat.card G > 2) :
  ¬∃ (H : Subgroup G), Nat.card H = Nat.card G - 1 := by
  sorry

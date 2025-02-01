import Mathlib.GroupTheory.Index

variable {G : Type*} [Group G]

theorem DF_4_2_8 {H : Subgroup G} {n : Nat} (hH : H.index = n) : ∃ (K : Subgroup G), K.Normal ∧ K ≤ H ∧ K.index ≤ Nat.factorial n := sorry

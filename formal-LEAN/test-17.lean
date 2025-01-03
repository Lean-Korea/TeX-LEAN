import Mathlib

variable {R : Type*} [CommRing R][IsLocalRing R]
variable {G : Type*} [Group G]

theorem element_not_in_maximal_is_unit  (M : Ideal R) (hM: M.IsMaximal) {x : R} (hx: x ∉ M) : IsUnit x := by
sorry

theorem exists_normal_subgroup_with_index_factorial {H : Subgroup G} {n : Nat} (hH : H.index = n) : ∃ (K : Subgroup G), K.Normal ∧ K ≤ H ∧ K.index ≤ Nat.factorial n := by
sorry

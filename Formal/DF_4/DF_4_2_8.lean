import Mathlib.GroupTheory.Index

/--
If $H$ is a finite index subgroup of $G$ of index $n$, then there exists
a normal subgroup $K$ of $G$ such that $K \leq H$ and $[G : K] \leq n!$.

Contributor: Kyu-Hwan Lee, Seewoo Lee
-/
theorem DF_4_2_8 [Group G] {H : Subgroup G} {n : Nat} (hH : H.index = n)
    : ∃ (K : Subgroup G), K.Normal ∧ K ≤ H ∧ K.index ≤ Nat.factorial n := by
  sorry

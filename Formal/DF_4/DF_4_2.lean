import Mathlib.GroupTheory.Index

variable {G : Type*} [Group G]

/--
Let $G$ be a group. Assume that $H$ is a subgroup of $G$ with index $n$. Prove that there exists a normal subgroup $K$ of $G$ such that $K$ is a subgroup of $H$ and $|G : K| \le n!$.

Contributor: Seewoo Lee
-/

theorem DF_4_2_8 {H : Subgroup G} {n : Nat} (hH : H.index = n) : ∃ (K : Subgroup G), K.Normal ∧ K ≤ H ∧ K.index ≤ Nat.factorial n := sorry

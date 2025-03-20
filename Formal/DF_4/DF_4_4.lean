import Mathlib.Data.Nat.Prime.Defs
import Mathlib.SetTheory.Cardinal.Finite

/--
Let $p$ and $q$ be distinct primes. Let $G$ be a group of order $pq$.
Then $G$ is cyclic.

Contributor: Byung-Hak Hwang
-/
theorem DF_4_4_2 [CommGroup G] {p q : Nat} {hp : Nat.Prime p} {hq : Nat.Prime q} {hdistinct : p ≠ q} {hG : Nat.card G = p * q} : IsCyclic G := by
  sorry

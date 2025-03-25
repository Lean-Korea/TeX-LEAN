import Mathlib.Algebra.Module.Submodule.Basic
import Mathlib.Data.Fintype.Basic

/--
DF_10_1_1 : $0m=0$ and $(-1)m=-m$ for all $m \in M$.

Contributor: Kyu-Hwan Lee
-/
theorem DF_10_1_1 {R M : Type*} [Ring R] [AddCommGroup M] [Module R M] {m : M} : (0 : R) • m = 0 ∧ (-1 : R) • m = -m := by
  sorry

/--
DF_10_1_2 : $R^\times$ and $M$ satisfy the two axioms for a group action of the multiplicative group $R^\times$ on the set $M$, i.e., (1) $r_1 \cdot (r_2 \cdot m)= (r_1r_2)\cdot m$, for all $r_1, r_2 \in R^\times$, $m \in M$, and (2) $1 \cdot m =m$ for all $m \in M$.

Contributor: Kyu-Hwan Lee
-/
theorem DF_10_1_2 [Ring R] [AddCommGroup M] [Module R M] {r1 r2 : Rˣ} {m : M} : r1 • (r2 • m) = (r1 * r2) • m  ∧ (1 : Rˣ) • m = m := by
  sorry

/--
DF_10_1_3 : Assume that $rm=0$ for some $r \in R$ and some $m \in M$ with $m \neq 0$. Then $r$ does not have a left inverse (i.e., there is no $s \in R$ such that $sr=1$).

Contributor: Kyu-Hwan Lee
-/
theorem DF_10_1_3 [Ring R] [AddCommGroup M] [Module R M] {r : R} {m : M} {h : r • m = 0} {hm : m ≠ 0} : ∀ s : R, s * r ≠ 1 := by
  sorry

/--
DF_10_1_4_a : Let $M$ be the module $R^n$ and let $I_1, I_2, \dots , I_n$ be left ideals of $R$. Then $ \{(x_1, x_2, \dots , x_n) | x_i \in I_i \}$ is a submodule of $M$.

DF_10_1_4_b : Let $M$ be the module $R^n$. Then $ \{(x_1, x_2, \dots, x_n) | x_i \in R \text{ and } x_1 + x_2 + \cdots + x_n=0 \}$ is a submodule of $M$.

Contributor: Kyu-Hwan Lee
-/


def DF_10_1_4_a [Ring R] [Fintype n] [Module R (n → R)] {I : n → Submodule R R} : Submodule R (n → R) where
  carrier := { x | ∀ i, x i ∈ I i }
  add_mem' := by sorry
  zero_mem' := by sorry
  smul_mem' := by sorry

def DF_10_1_4_b [Ring R] [Fintype n] [Module R (n → R)] : Submodule R (n → R) where
  carrier := { x | ∑ i, x i = 0 }
  add_mem' := by sorry
  zero_mem' := by sorry
  smul_mem' := by sorry

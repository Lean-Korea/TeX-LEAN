import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Prime.Defs
import Mathlib.Data.ZMod.Basic
import Mathlib.Algebra.Polynomial.Degree.Definitions
import Mathlib.Algebra.Polynomial.Eval.Defs

import Mathlib.Data.Complex.Basic

open scoped Polynomial

/--
Let $\tau$ be the map $\tau : \mathbb{C} \to \mathbb{C}$ defined by $\tau (a + bi) = a- bi$ (complex conjugation). Prove
that $\tau$ is an automorphism of $\mathbb{C}$.

Contributor: Yeachan Park
-/
def tau (z : ℂ) : ℂ := ⟨z.re, -z.im⟩
theorem DF_14_1_2 : ∃ (φ : ℂ ≃+* ℂ), ∀ z : ℂ, φ z = tau z := sorry

/--
Prove that $\mathbb{Q}(\sqrt{2})$ and $\mathbb{Q}(\sqrt{3})$ are not isomorphic.

Contributor: Yeachan Park
-/

abbrev Qsqrt2 := AdjoinRoot poly2
lemma irreducible_poly2 : Irreducible poly2 :=
  sorry
instance fact_irred_poly2 : Fact (Irreducible poly2) :=
  ⟨ irreducible_poly2 ⟩
noncomputable instance : Field Qsqrt2 :=
  AdjoinRoot.instField


abbrev Qsqrt3 := AdjoinRoot poly3
lemma irreducible_poly3 : Irreducible poly3 :=
  sorry
instance fact_irred_poly3 : Fact (Irreducible poly3) :=
  ⟨ irreducible_poly3 ⟩
noncomputable instance : Field Qsqrt3 :=
  AdjoinRoot.instField

theorem DF_14_1_4 : ¬ Nonempty (Qsqrt2 ≃+* Qsqrt3) :=
by sorry


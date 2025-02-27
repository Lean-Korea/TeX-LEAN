import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Prime.Defs
import Mathlib.Data.ZMod.Basic
import Mathlib.Algebra.Polynomial.Degree.Definitions
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Data.Complex.Basic
import Mathlib.RingTheory.AdjoinRoot

open Polynomial

/--
Let $\tau$ be the map $\tau : \mathbb{C} \to \mathbb{C}$ defined by $\tau (a + bi) = a- bi$ (complex conjugation). Prove
that $\tau$ is an automorphism of $\mathbb{C}$.

Contributor: Yeachan Park
-/
def DF_14_1_2_tau (z : ℂ) : ℂ := ⟨z.re, -z.im⟩
theorem DF_14_1_2 : ∃ (φ : ℂ ≃+* ℂ), φ = DF_14_1_2_tau := sorry


noncomputable def DF_14_1_4_poly2 : ℚ[X] := X^2 - 2
noncomputable def DF_14_1_4_poly3 : ℚ[X] := X^2 - 3

abbrev DF_14_1_4_Qsqrt2 := AdjoinRoot DF_14_1_4_poly2
lemma DF_14_1_4_irreducible_poly2 : Irreducible DF_14_1_4_poly2 :=
  sorry
instance DF_14_1_4_fact_irred_poly2 : Fact (Irreducible DF_14_1_4_poly2) :=
  ⟨ DF_14_1_4_irreducible_poly2 ⟩
noncomputable instance : Field DF_14_1_4_Qsqrt2 :=
  AdjoinRoot.instField

abbrev DF_14_1_4_Qsqrt3 := AdjoinRoot DF_14_1_4_poly3
lemma DF_14_1_4_irreducible_poly3 : Irreducible DF_14_1_4_poly3 :=
  sorry
instance DF_14_1_4_fact_irred_poly3 : Fact (Irreducible DF_14_1_4_poly3) :=
  ⟨ DF_14_1_4_irreducible_poly3 ⟩
noncomputable instance : Field DF_14_1_4_Qsqrt3 :=
  AdjoinRoot.instField

/--
Prove that $\mathbb{Q}(\sqrt{2})$ and $\mathbb{Q}(\sqrt{3})$ are not isomorphic.

Contributor: Yeachan Park
-/
theorem DF_14_1_4 : ¬ Nonempty (DF_14_1_4_Qsqrt2 ≃+* DF_14_1_4_Qsqrt3) :=
by sorry

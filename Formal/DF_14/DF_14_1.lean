import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Prime.Defs
import Mathlib.Data.ZMod.Basic
import Mathlib.Algebra.Polynomial.Degree.Definitions
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Data.Complex.Basic
import Mathlib.RingTheory.AdjoinRoot

open Polynomial

/--
DF_14_1_2 : Let $\tau$ be the map $\tau : \mathbb{C} \to \mathbb{C}$ defined by $\tau (a + bi) = a- bi$ (complex conjugation). Then $\tau$ is an automorphism of $\mathbb{C}$.

Contributor: Yeachan Park
-/
def DF_14_1_2_tau (z : ℂ) : ℂ := ⟨z.re, -z.im⟩
theorem DF_14_1_2 : ∃ (φ : ℂ ≃+* ℂ), φ = DF_14_1_2_tau := sorry


/--
DF_14_1_4_a : $x^2-2$ is irreducible.

Contributor: Yeachan Park
-/
noncomputable def DF_14_1_4_poly2 : ℚ[X] := X^2 - 2
abbrev DF_14_1_4_Qsqrt2 := AdjoinRoot DF_14_1_4_poly2
lemma DF_14_1_4_a : Irreducible DF_14_1_4_poly2 :=
  sorry

/--
DF_14_1_4_b : $x^2-3$ is irreducible.

Contributor: Yeachan Park
-/
noncomputable def DF_14_1_4_poly3 : ℚ[X] := X^2 - 3
abbrev DF_14_1_4_Qsqrt3 := AdjoinRoot DF_14_1_4_poly3
lemma DF_14_1_4_b : Irreducible DF_14_1_4_poly3 :=
  sorry






/--
DF_14_1_4 : $\mathbb{Q}(\sqrt{2})$ and $\mathbb{Q}(\sqrt{3})$ are not isomorphic.

Contributor: Yeachan Park
-/

instance DF_14_1_4_fact_irred_poly2 : Fact (Irreducible DF_14_1_4_poly2) :=
  ⟨ DF_14_1_4_a ⟩
noncomputable instance : Field DF_14_1_4_Qsqrt2 :=
  AdjoinRoot.instField

instance DF_14_1_4_fact_irred_poly3 : Fact (Irreducible DF_14_1_4_poly3) :=
  ⟨ DF_14_1_4_b ⟩
noncomputable instance : Field DF_14_1_4_Qsqrt3 :=
  AdjoinRoot.instField
  
theorem DF_14_1_4 : ¬ Nonempty (DF_14_1_4_Qsqrt2 ≃+* DF_14_1_4_Qsqrt3) :=
by sorry

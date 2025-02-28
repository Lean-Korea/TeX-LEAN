import Mathlib.Algebra.Polynomial.Basic
import Mathlib.Algebra.Prime.Defs
import Mathlib.Data.ZMod.Basic
import Mathlib.Algebra.Polynomial.Degree.Definitions
import Mathlib.Algebra.Polynomial.Eval.Defs

import Mathlib.Data.Complex.Basic

open scoped Polynomial

/--
DF_14_1_2 : Let $\tau$ be the map $\tau : \mathbb{C} \to \mathbb{C}$ defined by $\tau (a + bi) = a- bi$ (complex conjugation). Prove
that $\tau$ is an automorphism of $\mathbb{C}$.

Contributor : Yeachan Park
-/
def tau (z : ℂ) : ℂ := ⟨z.re, -z.im⟩
theorem DF_14_1_2 : ∃ (φ : ℂ ≃+* ℂ), ∀ z : ℂ, φ z = tau z := sorry


/--
DF_14_1_4_1 : $X^2-2$ is irreducible.

Contributor : Yeachan Park
-/
noncomputable def poly2 : ℚ[X] := Polynomial.X^2 - 2
lemma DF_14_1_4_1 : Irreducible poly2 :=
  sorry

/--
DF_14_1_4_2 : $X^2-3$ is irreducible.

Contributor : Yeachan Park
-/
noncomputable def poly3 : ℚ[X] := Polynomial.X^2 - 3
lemma DF_14_1_4_2 : Irreducible poly3 :=
  sorry


/--
DF_14_1_4 : Prove that $\mathbb{Q}(\sqrt{2})$ and $\mathbb{Q}(\sqrt{3})$ are not isomorphic.

Contributor : Yeachan Park
-/

abbrev Qsqrt2 := AdjoinRoot poly2
instance fact_irred_poly2 : Fact (Irreducible poly2) :=
  ⟨ irreducible_poly2 ⟩
noncomputable instance : Field Qsqrt2 :=
  AdjoinRoot.instField


abbrev Qsqrt3 := AdjoinRoot poly3
instance fact_irred_poly3 : Fact (Irreducible poly3) :=
  ⟨ irreducible_poly3 ⟩
noncomputable instance : Field Qsqrt3 :=
  AdjoinRoot.instField
theorem DF_14_1_4 : ¬ Nonempty (Qsqrt2 ≃+* Qsqrt3) :=
by sorry



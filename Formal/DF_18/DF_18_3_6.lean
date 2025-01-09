import Mathlib.RepresentationTheory.Basic
import Mathlib.RepresentationTheory.Character
import Mathlib.RepresentationTheory.FDRep
import Mathlib.Data.Complex.Basic

open ComplexConjugate

variable {G : Type} [Group G] [Fintype G]
variable (V : FDRep ℂ G)

/-- The subspace of V fixed pointwise by all elements of G -/
noncomputable def FixedPointSubspace (V : FDRep ℂ G) : Submodule ℂ V :=
  { carrier := { v : V | ∀ g : G, V.ρ g v = v },
    zero_mem' := by simp,
    add_mem' := by
      intros v w hv hw g
      simp [hv g, hw g]
    smul_mem' := by
      intros c v hv g
      simp [hv g] }


/-- The trivial character -/
def trivialChar : G → ℂ :=
  fun _ => 1

/-- The inner product of characters -/
noncomputable def charInnerProduct (χ₁ χ₂ : G → ℂ) : ℂ :=
  (1 / (Fintype.card G : ℂ)) * ∑ g : G, χ₁ g * conj (χ₂ g)

theorem fixed_point_subspace_dim (V : FDRep ℂ G) :
  Module.finrank ℂ (FixedPointSubspace V) = charInnerProduct V.character trivialChar := sorry

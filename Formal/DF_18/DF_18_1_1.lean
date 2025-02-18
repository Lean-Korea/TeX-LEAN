import Mathlib.RepresentationTheory.FDRep

variable {G : Type} [Group G] [Fintype G]
variable {K : Type} [Field K]

noncomputable def quotientRep (V : FDRep K G) : FDRep K (G ⧸ V.ρ.ker) :=
  FDRep.of (QuotientGroup.lift _ V.ρ fun _g => MonoidHom.mem_ker.mp)

theorem representation_quotient_faithful (V : FDRep K G) : Function.Injective (quotientRep V).ρ := sorry

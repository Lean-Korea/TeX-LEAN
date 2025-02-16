import Mathlib.RepresentationTheory.FDRep

variable {G : Type} [Group G] [Fintype G]
variable {K : Type} [Field K]

theorem DF_18_1_5 (V : FDRep K G) [CategoryTheory.Simple V] (hCardG : Fintype.card G > 1) : Module.rank K V < Fintype.card G := sorry

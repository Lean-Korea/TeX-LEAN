import Mathlib.RepresentationTheory.FDRep

variable {G : Type} [Group G] [Fintype G]
variable {K : Type} [Field K]
variable (V : FDRep K G)

noncomputable def quotientRep (V : FDRep K G) : FDRep K (G ⧸ V.ρ.ker) :=
  FDRep.of (QuotientGroup.lift _ V.ρ fun _g => MonoidHom.mem_ker.mp)

/--
Prove that if $\phi : G \rightarrow GL(V) is any representation, then $\phi$ gives a
faithful representation of $G / \mathrm{ker} \phi$.

Contributor: Byung-Hak Hwang
-/
theorem DF_18_1_1 (V : FDRep K G) : Function.Injective (quotientRep V).ρ := by
  sorry

/--
Let $F$ be a field, let $G$ be a finite group and let $n \in \mathbb{Z}^+$.
Prove that if $|G| > 1$ then every irreducible $FG$-module has dimension $< |G|$.

Contributor: Byung-Hak Hwang
-/
theorem DF_18_1_5 [CategoryTheory.Simple V] (hCardG : Fintype.card G > 1)
    : Module.rank K V < Fintype.card G := by
  sorry

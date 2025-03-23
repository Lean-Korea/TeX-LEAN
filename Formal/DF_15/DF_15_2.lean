import Mathlib.Order.CompletePartialOrder
import Mathlib.RingTheory.Ideal.Maps

/--
Let $R$ and $S$ be commutative rings, and $f: R\rightarrow S$ a ring homomorphism.
Let $I$ be an ideal of $R$. Then $f(rad(I)) \subseteq rad(f(I))$, where $rad(J)$ is the radical of an ideal $J$.

Contributor: Byung-Hak Hwang
-/
theorem DF_15_2_7_1 [CommRing R] [CommRing S] (f : R →+* S) (I : Ideal R) : Ideal.map f (I.radical) ≤ (Ideal.map f I).radical := by
  sorry

/--
Let $R$ and $S$ be commutative rings, and $f: R\rightarrow S$ a surjective ring homomorphism.
Let $I$ be an ideal of $R$ such that $I$ contains the kernel of $f$.
Then $f(rad(I)) = rad(f(I))$, where $rad(J)$ is the radical of an ideal $J$.

Contributor: Byung-Hak Hwang
-/
theorem DF_15_2_7_2 [CommRing R] [CommRing S] (f : R →+* S) (hf : Function.Surjective f) (I : Ideal R) (hI : RingHom.ker f ≤ I) : Ideal.map f (I.radical) = (Ideal.map f I).radical := by
  sorry

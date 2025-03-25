import Mathlib.Algebra.Group.MinimalAxioms
import Mathlib.GroupTheory.OrderOfElement

/--
$(a_1 a_2 \ldots a_n)^{-1} = a_n^{-1} a_{n - 1}^{-1} \ldots a_1^{-1}$ for every
$a_1, a_2, \ldots, a_n \in G$, where $G$ is a group.

Contributor: Jihoon Hyun
-/
theorem DF_1_1_15 {G : Type*} [Group G] (l : List G) :
    (l.foldl (· * ·) 1)⁻¹ = (l.map (·⁻¹)).foldr (· * ·) 1 :=
  sorry

/--
If $x$ is an element of a group $G$, then $x^2 = 1$ if and only if $|$ is either 1 or 2.

Contributor: Jihoon Hyun
-/

theorem DF_1_1_16 {G : Type*} [Group G] {x : G} :
    x ^ 2 = 1 ↔ (orderOf x = 1 ∨ orderOf x = 2) :=
  sorry

/--
Let $G$ be a group.
For some element $x \in G$ which $0 < |x|$, $x^{-1} = x^{|x| - 1}$ holds.

Contributor: Jihoon Hyun
-/
theorem DF_1_1_17 {G : Type*} [Group G] {x : G} (h : 0 < orderOf x) :
    x⁻¹ = x ^ (orderOf x - 1) :=
  sorry

/--
If $x$ and $y$ are elements of a group $G$,
$xy = yx$ if and only if $y^{-1}xy = x$ if and only if $x^{-1}y^{-1}xy = 1$.

Contributor: Jihoon Hyun
-/
theorem DF_1_1_18 {G : Type*} [Group G] (x y : G) :
    List.TFAE [
      x * y = y * x,
      y⁻¹ * x * y = x,
      x⁻¹ * y⁻¹ * x * y = 1
    ] :=
  sorry

/--
Let $x$ be an element of a group $G$.
(a) $x^{a + b} = x^a x^b$ and $(x^a)^b = x^{ab}$ for every positive integer $a$ and $b$.
(b) For every positive integer $a$, $(x^a)^{-1} = x^{-a}$.
(c) $x^{a + b} = x^a x^b$ and $(x^a)^b = x^{ab}$ for every integer $a$ and $b$.

Contributor: Jihoon Hyun
-/
theorem DF_1_1_19_a {G : Type*} [Group G] {x : G} {a b : ℕ} (ha : 0 < a) (hb : 0 < b) :
    x ^ (a + b) = x ^ a * x ^ b ∧ (x ^ a) ^ b = x ^ (a * b) :=
  sorry

theorem DF_1_1_19_b {G : Type*} [Group G] {x : G} {a : ℤ} :
    (x ^ a)⁻¹ = x ^ (-a) :=
  sorry

theorem DF_1_1_19_c {G : Type*} [Group G] {x : G} {a b : ℤ} :
    x ^ (a + b) = x ^ a * x ^ b ∧ (x ^ a) ^ b = x ^ (a * b) :=
  sorry

/--
$x$ and $x^{-1}$ have the same order for every element $x$ of a group $G$.

Contributor: Jihoon Hyun
-/
theorem DF_1_1_20 {G : Type*} [Group G] {x : G} :
    orderOf x = orderOf x⁻¹ :=
  sorry

/--
If $G$ is a finite group and $|G|$ is odd,
then for any $x \in G$, $x = (x^2)^k$ for some integer $1 ≤ k$.

Contributor: Jihoon Hyun
-/
theorem DF_1_1_21 {G : Type*} [Group G] [Fintype G] (h : Odd (Fintype.card G)) {x : G} :
    ∃ (k : ℕ), 1 ≤ k ∧ x = (x ^ 2) ^ k :=
  sorry

/--
If $x$ and $g$ are elements of a group $G$, then $|x| = |g^{-1}xg|$.
Also, $|ab| = |ba|$ for all $a, b \in G$.

Contributor: Jihoon Hyun
-/
theorem DF_1_1_22_1 {G : Type*} [Group G] {x g : G} :
    orderOf x = orderOf (g⁻¹ * x * g) :=
  sorry

theorem DF_1_1_22_2 {G : Type*} [Group G] {a b : G} :
    orderOf (a * b) = orderOf (b * a) :=
  sorry

/--
Let $G$ be a group and $x$ be an element of $G$ with $|x| = n < \infty$.
If $n = st$ for some positive integers $s$ and $t$, $|x^s| = t$ holds.

Contributor: Jihoon Hyun
-/
theorem DF_1_1_23
    {G : Type*} [Group G] {x : G} (hx : orderOf x ≠ 0)
    {s : ℕ} (hs : 0 < s) {t : ℕ} (ht : 0 < t) (h : orderOf x = s * t) :
    orderOf (x ^ s) = t :=
  sorry

/--
If $a$ and $b$ are \textit{commuting elements} of a group $G$,
$(ab)^n = a^n b^n$ for every $n \in \mathbb{Z}$.

Contributor: Jihoon Hyun
-/
theorem DF_1_1_24 {G : Type*} [CommGroup G] (a b : G) (n : ℤ) :
    (a * b) ^ n = a ^ n * b ^ n :=
  sorry

/--
Group $G$ is abelian if $x^2 = 1$ for every $x \in G$.

Contributor: Jihoon Hyun
-/
def DF_1_1_25 {G : Type*} [Group G] (h : ∀ x : G, x ^ 2 = 1) :
    CommGroup G where
  mul_comm := sorry

/--
Assume $H$ is a nonempty subset of a group $(G, \bigstar)$ which is closed under the binary
operation on $G$ and is closed under inverses,
i.e., for all $h$ and $k \in H$, $hk$ and $h^{-1} \in H$ holds.
Then $H$ is also a group under the operation $\bigstar$ restricted to $H$.

Contributor: Jihoon Hyun
-/
def DF_1_1_26
    {G : Type*} [Group G]
    (H : Set G) (hmul : ∀ a ∈ H, ∀ b ∈ H, a * b ∈ H) (hinv : ∀ a ∈ H, a⁻¹ ∈ H) :
    Group H :=
  sorry

/--
If $x$ is an element of a group $G$ then $\{x^n | n \in \mathbb{Z}\}$ is a subgroup of $G$.

Contributor: Jihoon Hyun
-/
def DF_1_1_27 {G : Type*} [Group G] (g : G) :
    Group {x : G | ∃ n, x = g ^ n} :=
  sorry

/--
Let $(A, \bigstar)$ and $(B, \diamond)$ be groups and let $A \times B$ be their direct product
with a binary operation $(a_1, b_1) (a_2, b_2) = (a_1 \bigstar a_2, b_1 \diamond b_2)$.
Then $A \times B$ satisfies all group axioms:
(a) For all $(a_i, b_i) \in A \times B$, $i = 1, 2, 3$
    $(a_1, b_1) [(a_2, b_2) (a_3, b_3)] = [(a_1, b_1) (a_2, b_2)] (a_3, b_3)$,
(b) $(1, 1)$ is the identity of $A \times B$, and
(c) The inverse of $(a, b)$ is $(a^{-1}, b^{-1})$.

Contributor: Jihoon Hyun
-/
def DF_1_1_28_a {A B : Type*} [Group A] [Group B] :
    Group (A × B) :=
  haveI instMul : Mul (A × B) := ⟨fun g₁ g₂ ↦ (g₁.fst * g₂.fst, g₁.snd * g₂.snd)⟩
  haveI instInv : Inv (A × B) := ⟨fun g ↦ (g.fst⁻¹, g.snd⁻¹)⟩
  haveI instOne : One (A × B) := ⟨(1, 1)⟩
  @Group.ofLeftAxioms (A × B) instMul instInv instOne
    (sorry /- (a) -/)
    (sorry /- (b) -/)
    (sorry /- (c) -/)

/--
$A \times B$ is an abelian group if and only if both $A$ and $B$ are abelian.

Contributor: Jihoon Hyun
-/
theorem DF_1_1_29 {A B : Type*} [Group A] [Group B] :
    Std.Commutative (· * · : A × B → A × B → A × B) ↔
    (Std.Commutative (· * · : A → A → A) ∧ Std.Commutative (· * · : B → B → B)) := by
  sorry

/--
The elements $(a, 1)$ and $(1, b)$ of $A \times B$ commute.
Also, the order of $(a, b)$ is the least common multiple of $|a|$ and $|b|$.

Contributor: Jihoon Hyun
-/
theorem DF_1_1_30 {A B : Type*} [Group A] [Group B] (a : A) (b : B) :
    (a, 1) * (1, b) = (1, b) * (a, 1) ∧ orderOf (a, b) = (orderOf a).lcm (orderOf b) :=
  sorry

/--
Every finite group $G$ of even order contains an element of order 2.

Contributor: Jihoon Hyun
-/
theorem DF_1_1_31 {G : Type*} [Group G] [Fintype G] (h : Even (Fintype.card G)) :
    ∃ x : G, orderOf x = 2 :=
  sorry

/--
If $x$ is an element of finite order $n$ in a group $G$,
$1, x, x^2, \ldots, x^{n - 1}$ are all distinct.
This also implies that $|x| \leq |G|$.

Contributor: Jihoon Hyun
-/
theorem DF_1_1_32 {G : Type*} [Group G] [Fintype G] (x : G) :
    ((List.range (orderOf x)).map (x ^ ·)).Nodup ∧ orderOf x ≤ Fintype.card G :=
  sorry

/--
Let $x$ be an element of finite order $n$ in a group $G$.
(a) If $n$ is odd then $x^i \neq x^{-i}$ for all $i = 1, 2, \ldots, n - 1$.
(b) If $n = 2k$ and $1 \leq i < n$ then $x^i = x^{-i}$ if and only if $i = k$.

Contributor: Jihoon Hyun
-/
theorem DF_1_1_33_a
    {G : Type*} [Group G] [Fintype G] (h : Odd (Fintype.card G)) (x : G)
    (i : ℤ) (hi₁ : 0 < i) (hi₂ : i < Fintype.card G) :
    x ^ i ≠ x ^ (-i) :=
  sorry

theorem DF_1_1_33_b
    {G : Type*} [Group G] [Fintype G] (h : Even (Fintype.card G)) (x : G)
    {i : ℤ} (hi₁ : 0 < i) (hi₂ : i < Fintype.card G) :
    x ^ i = x ^ (-i) ↔ i = (Fintype.card G) / 2 :=
  sorry

/--
If $x$ is an element of infinite order in a group $G$,
the elements $x^n, n \in \mathbb{Z}$ are all distinct.

Contributor: Jihoon Hyun
-/
theorem DF_1_1_34 {G : Type*} [Group G] {x : G} (h : orderOf x = 0) :
    Function.Injective fun n : ℤ ↦ x ^ n :=
  sorry

/--
If $x$ is an element of finite order $n$ in $G$, then \textit{any} integral power of $x$ equals
one of the elements in the set $\{1, x, x^2, \ldots, x^{n - 1}\}$.

Contributor: Jihoon Hyun
-/
theorem DF_1_1_35 {G : Type*} [Group G] [Fintype G] (x : G) (n : ℤ) :
    x ∈ (List.range (Fintype.card G)).map (x ^ ·) :=
  sorry

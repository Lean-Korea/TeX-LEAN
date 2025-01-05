import Mathlib.LinearAlgebra.Matrix.Trace

open Matrix

variable {R : Type} [CommRing R] {n : Type} [Fintype n] [DecidableEq n]

/-- (Exercise 18.3.1) Prove that tr AB = tr BA for n x n matrices A and B with entries from any commutative ring. -/
theorem trace_mul_comm (A B : Matrix n n R) : Matrix.trace (A * B) = Matrix.trace (B * A) := by
  sorry

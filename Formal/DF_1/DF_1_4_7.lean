import Mathlib.Algebra.Field.Defs
import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs


variable {p : ℕ} [Fact (Nat.Prime p)]

instance : Field (ZMod p) := ZMod.instField p

theorem DF_1_4_7 : Nat.card (Matrix.GeneralLinearGroup (Fin 2) (ZMod p)) = p^4 - p^3 - p^2 + p := sorry

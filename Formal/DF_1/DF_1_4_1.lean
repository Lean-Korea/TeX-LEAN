import Mathlib.Algebra.Field.Defs
import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs


instance : Field (ZMod 2) := ZMod.instField 2

theorem DF_1_4_1 : Nat.card (Matrix.GeneralLinearGroup (Fin 2) (ZMod 2)) = 6 := sorry

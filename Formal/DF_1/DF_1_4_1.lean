import Mathlib.Algebra.Field.Defs
import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs


def F₂ := ZMod 2

instance : Field F₂ := ZMod.instField 2

theorem DF_1_4_1 : Nat.card (Matrix.GeneralLinearGroup (Fin 2) F₂) = 6 := sorry

import BrauerGroupSchemesTheoremCanonicalLaneLean.BrauerGroupSchemesMathlibObjects

namespace HautevilleHouse
namespace BrauerGroupSchemesTheoremCanonicalLaneLean

structure CentralSimpleAlgebraPackage where
  field : Type
  algebra : Type
  finiteDimensional : Prop
  centralSimple : Prop
  splittingField : Prop
  matrixAlgebraIsomorphism : Prop

structure CentralSimpleAlgebraEvidence (C : CentralSimpleAlgebraPackage) where
  finiteDimensionalClosed : C.finiteDimensional
  centralSimpleClosed : C.centralSimple
  splittingFieldClosed : C.splittingField
  matrixAlgebraIsomorphismClosed : C.matrixAlgebraIsomorphism

def CentralSimpleAlgebraClosed (C : CentralSimpleAlgebraPackage) : Prop :=
  C.finiteDimensional ∧ C.centralSimple ∧ C.splittingField ∧ C.matrixAlgebraIsomorphism

theorem central_simple_algebra_closed_from_evidence
    (C : CentralSimpleAlgebraPackage) (E : CentralSimpleAlgebraEvidence C) :
    CentralSimpleAlgebraClosed C := by
  exact And.intro E.finiteDimensionalClosed
    (And.intro E.centralSimpleClosed
      (And.intro E.splittingFieldClosed E.matrixAlgebraIsomorphismClosed))

end BrauerGroupSchemesTheoremCanonicalLaneLean
end HautevilleHouse
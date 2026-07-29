import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

structure CohomologicalInterpretation where
  etaleCohomology : Prop
  brauerGroupIsBr2 : Prop
  exactSequence : Prop
  cohomologyClosed : etaleCohomology ∧ brauerGroupIsBr2 ∧ exactSequence

structure AzumayaAlgebraLayer where
  localAzumaya : Prop
  gluingConditions : Prop
  moritaEquivalence : Prop
  azumayaClosed : localAzumaya ∧ gluingConditions ∧ moritaEquivalence

structure SplittingFieldLayer where
  splittingFieldExists : Prop
  centralSimpleAlgebra : Prop
  indexPeriod : Prop
  splittingClosed : splittingFieldExists ∧ centralSimpleAlgebra ∧ indexPeriod

structure TateModuleLayer where
  tateModuleDefined : Prop
  cupProduct : Prop
  pairingNondegenerate : Prop
  tateClosed : tateModuleDefined ∧ cupProduct ∧ pairingNondegenerate

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
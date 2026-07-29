import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

structure BrauerGroupScheme where
  baseScheme : Type u
  baseTopology : TopologicalSpace baseScheme
  etaleSheaf : Prop
  brauerGroup : Type v
  tensorProduct : brauerGroup → brauerGroup → brauerGroup
  associativity : Prop
  unitObject : brauerGroup
  unitIsUnit : Prop
  invertibility : Prop
  azumayaAlgebraCondition : Prop

def BrauerGroupSchemeClosed (B : BrauerGroupScheme) : Prop :=
  B.etaleSheaf ∧ B.associativity ∧ B.unitIsUnit ∧ B.invertibility ∧ B.azumayaAlgebraCondition

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
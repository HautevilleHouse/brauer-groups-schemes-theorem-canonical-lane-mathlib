import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

structure BrauerGroupsSchemesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BrauerGroupsSchemesAdmittedObject where
  space : BrauerGroupsSchemesSpace
  brauerGroupDefined : Prop
  schemeBase : Prop
  azumayaAlgebraStructure : Prop
  cohomologicalClassification : Prop
  conclusion : cohomologicalClassification

def BrauerGroupsSchemesWitnessClosed (O : BrauerGroupsSchemesAdmittedObject) : Prop :=
  O.cohomologicalClassification

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
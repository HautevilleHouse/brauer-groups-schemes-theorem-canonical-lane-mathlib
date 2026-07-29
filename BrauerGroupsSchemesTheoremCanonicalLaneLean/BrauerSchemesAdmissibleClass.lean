import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

structure BrauerSchemesAdmittedObject where
  scheme : Type u
  topology : TopologicalSpace scheme
  étaleCover : Prop
  AzumayaAlgebra : Type v
  brauerClass : Prop
  conclusion : brauerClass

structure BrauerSchemesAdmissibleClass where
  object : BrauerSchemesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def brauerSchemesAdmittedClosure (A : BrauerSchemesAdmissibleClass) : Prop :=
  (A.object.conclusion) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
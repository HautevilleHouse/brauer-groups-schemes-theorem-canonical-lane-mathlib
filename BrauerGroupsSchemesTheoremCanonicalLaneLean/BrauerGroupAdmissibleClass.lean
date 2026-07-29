import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : BrauerGroupObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BrauerGroupEndgameObject A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
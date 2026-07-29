import canonicalLaneMathlib.AdmissibleClass
import BrauerGroupsSchemesTheoremCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : BrauerGroupsSchemesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BrauerGroupsSchemesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
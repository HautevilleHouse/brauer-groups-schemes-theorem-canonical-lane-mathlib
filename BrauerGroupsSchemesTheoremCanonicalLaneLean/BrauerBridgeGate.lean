import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

def brauerBridgeClosed (A : AdmissibleClass) : Prop :=
  BrauerWitnessClosed (A.object : BrauerAdmittedObject)

theorem brauer_bridge_from_admissible_class (A : AdmissibleClass) : brauerBridgeClosed A := by
  exact (A.object : BrauerAdmittedObject).conclusion

def brauerGateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem brauer_gate_from_admissible_class (A : AdmissibleClass) : brauerGateClosed A := by
  exact A.gateWitness

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
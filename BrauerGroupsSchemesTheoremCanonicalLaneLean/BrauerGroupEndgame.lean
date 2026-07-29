import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BrauerGroupEndgameObject A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.schemeStructure ∧ A.object.brauerGroupOperation

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
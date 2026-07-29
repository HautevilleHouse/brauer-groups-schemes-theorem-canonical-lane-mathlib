import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrauerGroupsSchemesTheoremCanonicalLaneLean.BrauerGroupObject
import HautevilleHouse.BrauerGroupsSchemesTheoremCanonicalLaneLean.GaloisCohomologyBridge

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

def ConstrainedBrauerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_brauer_endgame (A : AdmissibleClass) : ConstrainedBrauerClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
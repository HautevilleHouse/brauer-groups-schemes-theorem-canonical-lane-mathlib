import canonicalLaneMathlib.AdmissibleClass
import BrauerGroupsSchemesTheoremCanonicalLaneLean.BrauerGroupSchemeBridge
import BrauerGroupsSchemesTheoremCanonicalLaneLean.BrauerGroupSchemeGate

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

def ConstrainedBrauerGroupSchemeClosure (A : AdmissibleClass) : Prop :=
  brauerBridgeClosed A ∧ brauerGateClosed A

theorem constrained_brauer_group_scheme_endgame (A : AdmissibleClass) :
    ConstrainedBrauerGroupSchemeClosure A := by
  refine And.intro ?_ ?_
  · exact brauer_bridge_from_admissible_class A
  · exact brauer_gate_from_admissible_class A

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
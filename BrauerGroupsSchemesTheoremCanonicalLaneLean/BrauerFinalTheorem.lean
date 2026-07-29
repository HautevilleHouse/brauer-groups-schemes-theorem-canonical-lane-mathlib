import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

def ConstrainedBrauerClosure (A : AdmissibleClass) : Prop :=
  brauerBridgeClosed A ∧ brauerGateClosed A

theorem constrained_brauer_endgame (A : AdmissibleClass) : ConstrainedBrauerClosure A := by
  exact And.intro (brauer_bridge_from_admissible_class A) (brauer_gate_from_admissible_class A)

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass
import BrauerGroupsSchemesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

def BrauerGroupsSchemesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem brauer_groups_schemes_endgame (A : AdmissibleClass) :
    BrauerGroupsSchemesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
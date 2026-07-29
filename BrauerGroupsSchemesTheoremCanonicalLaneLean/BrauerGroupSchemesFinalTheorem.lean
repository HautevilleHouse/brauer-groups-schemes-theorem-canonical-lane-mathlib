import BrauerGroupSchemesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BrauerGroupSchemesTheoremCanonicalLaneLean

def ConstrainedBrauerGroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_brauer_group_endgame (A : AdmissibleClass) :
    ConstrainedBrauerGroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrauerGroupSchemesTheoremCanonicalLaneLean
end HautevilleHouse
import BrauerGroupsSchemesTheoremCanonicalLaneLean.BrauerSchemesGateLemmas

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

def ConstrainedBrauerSchemesClosure (A : BrauerSchemesAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_brauer_schemes_endgame (A : BrauerSchemesAdmissibleClass) :
    ConstrainedBrauerSchemesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
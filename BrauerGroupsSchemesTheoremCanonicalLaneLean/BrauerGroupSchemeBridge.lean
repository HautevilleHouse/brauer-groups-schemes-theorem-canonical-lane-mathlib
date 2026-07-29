import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

def brauerBridgeClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ (match A with | ⟨obj, _, _, _⟩ => obj.conclusion)

theorem brauer_bridge_from_admissible_class (A : AdmissibleClass) :
    brauerBridgeClosed A := by
  refine And.intro ?_ ?_
  · exact bridge_from_admissible_class A
  · exact A.gateWitness.elim (fun h => h) (fun h => h)

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
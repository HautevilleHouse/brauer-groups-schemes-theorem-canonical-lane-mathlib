import BrauerGroupsSchemesTheoremCanonicalLaneLean.BrauerSchemesBridgeLemmas

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

def gateClosed (A : BrauerSchemesAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BrauerSchemesAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
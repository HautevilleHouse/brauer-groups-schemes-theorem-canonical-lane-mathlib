import BrauerGroupsSchemesTheoremCanonicalLaneLean.BrauerGroupPackage
import BrauerGroupsSchemesTheoremCanonicalLaneLean.BrauerSchemesFinalTheorem

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

structure BrauerSchemesAnalyticFoundation where
  étaleCohomology : ÉtaleCohomologyPackage
  étaleEvidence : ÉtaleCohomologyEvidence étaleCohomology
  azumayaAlgebra : AzumayaAlgebraPackage étaleCohomology
  azumayaEvidence : AzumayaAlgebraEvidence azumayaAlgebra
  brauerGroup : BrauerGroupPackage azumayaAlgebra
  brauerEvidence : BrauerGroupEvidence brauerGroup

def BrauerSchemesAnalyticFoundationClosed (F : BrauerSchemesAnalyticFoundation) : Prop :=
  ÉtaleCohomologyClosed F.étaleCohomology ∧
  AzumayaAlgebraClosed F.azumayaAlgebra ∧
  BrauerGroupClosed F.brauerGroup

theorem brauer_schemes_analytic_foundation_closed_from_evidence
    (F : BrauerSchemesAnalyticFoundation) :
    BrauerSchemesAnalyticFoundationClosed F := by
  exact And.intro (étale_cohomology_closed_from_evidence F.étaleCohomology F.étaleEvidence)
    (And.intro (azumaya_algebra_closed_from_evidence F.azumayaAlgebra F.azumayaEvidence)
      (brauer_group_closed_from_evidence F.brauerGroup F.brauerEvidence))

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
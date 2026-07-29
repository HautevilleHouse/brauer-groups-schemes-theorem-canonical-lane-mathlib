import BrauerGroupsSchemesTheoremCanonicalLaneLean.BrauerSchemesAdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

structure ÉtaleCohomologyPackage where
  étaleSite : Type u
  sheaf : Type v
  cohomologyGroups : ℕ → Type w
  cohomologyFunctorial : Prop
  exactSequence : Prop
  vanishingTheorems : Prop

structure ÉtaleCohomologyEvidence (E : ÉtaleCohomologyPackage) where
  cohomologyFunctorialClosed : E.cohomologyFunctorial
  exactSequenceClosed : E.exactSequence
  vanishingTheoremsClosed : E.vanishingTheorems

def ÉtaleCohomologyClosed (E : ÉtaleCohomologyPackage) : Prop :=
  E.cohomologyFunctorial ∧ E.exactSequence ∧ E.vanishingTheorems

theorem étale_cohomology_closed_from_evidence (E : ÉtaleCohomologyPackage)
    (Ev : ÉtaleCohomologyEvidence E) : ÉtaleCohomologyClosed E := by
  exact And.intro Ev.cohomologyFunctorialClosed
    (And.intro Ev.exactSequenceClosed Ev.vanishingTheoremsClosed)

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
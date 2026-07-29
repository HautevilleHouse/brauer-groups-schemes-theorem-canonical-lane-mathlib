import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupSchemesTheoremCanonicalLaneLean

structure GaloisCohomology (G : Type) [Group G] where
  cohomologyGroups : ℕ → Type
  connectingMaps : ∀ (n : ℕ), cohomologyGroups n → cohomologyGroups (n+1)
  exactness : ∀ (n : ℕ), Im (connectingMaps n) = Ker (connectingMaps (n+1))

structure GaloisCohomologyEvidence (H : GaloisCohomology G) where
  exactnessClosed : ∀ (n : ℕ), H.exactness n
  connectingMapsClosed : ∀ (n : ℕ), H.connectingMaps n ≠ ∅

def GaloisCohomologyClosed (H : GaloisCohomology G) : Prop :=
  (∀ (n : ℕ), H.exactness n) ∧ (∀ (n : ℕ), H.connectingMaps n ≠ ∅)

theorem galois_cohomology_closed (H : GaloisCohomology G) (E : GaloisCohomologyEvidence H) : GaloisCohomologyClosed H :=
  And.intro E.exactnessClosed E.connectingMapsClosed

end BrauerGroupSchemesTheoremCanonicalLaneLean
end HautevilleHouse
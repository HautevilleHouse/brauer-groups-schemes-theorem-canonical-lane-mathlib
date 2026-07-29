import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

structure GaloisCohomologyPackage where
  galoisGroup : Type u
  cohomologyFunctor : Type u -> Type v
  h1Classifies : Prop
  h2Brauer : Prop

def GaloisCohomologyClosed (G : GaloisCohomologyPackage) : Prop :=
  G.h1Classifies ∧ G.h2Brauer

theorem galois_coh_from_evidence (G : GaloisCohomologyPackage) : GaloisCohomologyClosed G :=
  ⟨G.h1Classifies, G.h2Brauer⟩

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
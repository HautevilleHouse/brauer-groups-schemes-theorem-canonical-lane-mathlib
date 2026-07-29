import BrauerGroupsSchemesTheoremCanonicalLaneLean.ÉtaleCohomologyPackage

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

structure AzumayaAlgebraPackage (E : ÉtaleCohomologyPackage) where
  centralSimpleAlgebra : Type u → Type v
  rankFinite : Prop
  étaleLocalTrivial : Prop
  tensorProductClosure : Prop
  moritaEquivalence : Prop

structure AzumayaAlgebraEvidence {E : ÉtaleCohomologyPackage}
    (A : AzumayaAlgebraPackage E) where
  rankFiniteClosed : A.rankFinite
  étaleLocalTrivialClosed : A.étaleLocalTrivial
  tensorProductClosureClosed : A.tensorProductClosure
  moritaEquivalenceClosed : A.moritaEquivalence

def AzumayaAlgebraClosed {E : ÉtaleCohomologyPackage}
    (A : AzumayaAlgebraPackage E) : Prop :=
  A.rankFinite ∧ A.étaleLocalTrivial ∧ A.tensorProductClosure ∧ A.moritaEquivalence

theorem azumaya_algebra_closed_from_evidence {E : ÉtaleCohomologyPackage}
    (A : AzumayaAlgebraPackage E) (Ev : AzumayaAlgebraEvidence A) :
    AzumayaAlgebraClosed A := by
  exact And.intro Ev.rankFiniteClosed
    (And.intro Ev.étaleLocalTrivialClosed
      (And.intro Ev.tensorProductClosureClosed Ev.moritaEquivalenceClosed))

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
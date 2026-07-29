import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

structure BrauerGroupScheme where
  baseScheme : Type u
  azumayaAlgebra : Type v
  moritaEquivalence : Prop
  brauerGroup : Type w
  brauerGroupLaw : Prop
  ob : brauerGroup
  brauerGroupLawClosed : brauerGroupLaw

structure BrauerGroupSchemeEvidence (B : BrauerGroupScheme) where
  moritaEquivalenceClosed : B.moritaEquivalence
  brauerGroupLawClosed : B.brauerGroupLaw

def BrauerGroupSchemeClosed (B : BrauerGroupScheme) : Prop :=
  B.moritaEquivalence ∧ B.brauerGroupLaw

theorem brauer_group_scheme_closed_from_evidence (B : BrauerGroupScheme) 
    (E : BrauerGroupSchemeEvidence B) : BrauerGroupSchemeClosed B := by
  exact And.intro E.moritaEquivalenceClosed E.brauerGroupLawClosed

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
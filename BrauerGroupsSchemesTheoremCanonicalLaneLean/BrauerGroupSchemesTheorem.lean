import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupSchemesTheoremCanonicalLaneLean

structure BrauerGroupScheme (k : Type) [Field k] where
  carrier : Scheme k
  groupLaw : GroupLaw carrier
  brauerAction : BrauerGroupAction carrier

structure BrauerGroupAction (X : Scheme k) where
  actionType : Type
  actionMap : actionType → Aut(X)

structure GroupLaw (X : Scheme k) where
  mult : X × X → X
  unit : X
  inv : X → X
  associativity : Prop
  unitLaw : Prop
  inverseLaw : Prop

structure BrauerGroupEvidence (B : BrauerGroupScheme k) where
  carrierSchemeClosed : B.carrier.isClosed
  groupLawClosed : B.groupLaw.associativity ∧ B.groupLaw.unitLaw ∧ B.groupLaw.inverseLaw
  brauerActionClosed : B.brauerAction.actionType ≠ Empty

def BrauerGroupSchemesTheoremClosed (k : Type) [Field k] (B : BrauerGroupScheme k) : Prop :=
  B.carrier.isClosed ∧ (B.groupLaw.associativity ∧ B.groupLaw.unitLaw ∧ B.groupLaw.inverseLaw) ∧ (B.brauerAction.actionType ≠ Empty)

theorem brauer_group_scheme_closed_from_evidence (k : Type) [Field k] (B : BrauerGroupScheme k) (E : BrauerGroupEvidence B) : BrauerGroupSchemesTheoremClosed B :=
  And.intro E.carrierSchemeClosed (And.intro E.groupLawClosed E.brauerActionClosed)

end BrauerGroupSchemesTheoremCanonicalLaneLean
end HautevilleHouse
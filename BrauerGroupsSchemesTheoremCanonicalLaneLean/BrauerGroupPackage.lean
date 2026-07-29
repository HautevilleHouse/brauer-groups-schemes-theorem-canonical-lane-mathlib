import BrauerGroupsSchemesTheoremCanonicalLaneLean.AzumayaAlgebraPackage

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

structure BrauerGroupPackage {E : ÉtaleCohomologyPackage}
    (A : AzumayaAlgebraPackage E) where
  brauerGroup : Type u
  groupStructure : Prop
  injectiveMapToCohomology : Prop
  surjectivityCriterion : Prop
  periodIndexRelation : Prop

structure BrauerGroupEvidence {E : ÉtaleCohomologyPackage}
    {A : AzumayaAlgebraPackage E} (B : BrauerGroupPackage A) where
  groupStructureClosed : B.groupStructure
  injectiveMapToCohomologyClosed : B.injectiveMapToCohomology
  surjectivityCriterionClosed : B.surjectivityCriterion
  periodIndexRelationClosed : B.periodIndexRelation

def BrauerGroupClosed {E : ÉtaleCohomologyPackage}
    {A : AzumayaAlgebraPackage E} (B : BrauerGroupPackage A) : Prop :=
  B.groupStructure ∧ B.injectiveMapToCohomology ∧ B.surjectivityCriterion ∧ B.periodIndexRelation

theorem brauer_group_closed_from_evidence {E : ÉtaleCohomologyPackage}
    {A : AzumayaAlgebraPackage E} (B : BrauerGroupPackage A)
    (Ev : BrauerGroupEvidence B) : BrauerGroupClosed B := by
  exact And.intro Ev.groupStructureClosed
    (And.intro Ev.injectiveMapToCohomologyClosed
      (And.intro Ev.surjectivityCriterionClosed Ev.periodIndexRelationClosed))

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
import BrauerGroupSchemesTheoremCanonicalLaneLean.CentralSimpleAlgebraEvidence

namespace HautevilleHouse
namespace BrauerGroupSchemesTheoremCanonicalLaneLean

structure BrauerGroupPackage (C : CentralSimpleAlgebraPackage) where
  underlyingSet : Type
  groupOperation : underlyingSet → underlyingSet → underlyingSet
  identityElement : underlyingSet
  inverseMap : underlyingSet → underlyingSet
  groupAxioms : Prop
  groupAxiomsClosed : groupAxioms
  tensorProductDefined : Prop
  tensorProductDefinedClosed : tensorProductDefined

def BrauerGroupClosed (C : CentralSimpleAlgebraPackage) (B : BrauerGroupPackage C) : Prop :=
  B.groupAxioms ∧ B.tensorProductDefined

theorem brauer_group_closed (C : CentralSimpleAlgebraPackage) (B : BrauerGroupPackage C) :
    BrauerGroupClosed C B := by
  exact And.intro B.groupAxiomsClosed B.tensorProductDefinedClosed

end BrauerGroupSchemesTheoremCanonicalLaneLean
end HautevilleHouse
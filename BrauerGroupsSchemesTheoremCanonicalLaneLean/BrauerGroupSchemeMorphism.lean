import BrauerGroupSchemesTheoremCanonicalLaneLean.BrauerGroupDefined

namespace HautevilleHouse
namespace BrauerGroupSchemesTheoremCanonicalLaneLean

structure BrauerGroupSchemeMorphism (C1 C2 : CentralSimpleAlgebraPackage) where
  sourceScheme : Type
  targetScheme : Type
  underlyingFunctor : sourceScheme → targetScheme
  functoriality : Prop
  groupHomomorphism : Prop
  functorialityClosed : functoriality
  groupHomomorphismClosed : groupHomomorphism

def BrauerGroupSchemeMorphismProperties {C1 C2 : CentralSimpleAlgebraPackage}
    (M : BrauerGroupSchemeMorphism C1 C2) : Prop :=
  M.functoriality ∧ M.groupHomomorphism

theorem brauer_group_scheme_morphism_properties_closed
    {C1 C2 : CentralSimpleAlgebraPackage}
    (M : BrauerGroupSchemeMorphism C1 C2) :
    BrauerGroupSchemeMorphismProperties M := by
  exact And.intro M.functorialityClosed M.groupHomomorphismClosed

end BrauerGroupSchemesTheoremCanonicalLaneLean
end HautevilleHouse
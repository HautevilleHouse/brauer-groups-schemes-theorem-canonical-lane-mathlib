import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

structure BrauerGroupObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  schemeStructure : Prop
  centralSimpleAlgebra : Type v -> Prop
  brauerGroupOperation : Prop
  residueFieldBrauer : Prop

def BrauerGroupEndgameObject (B : BrauerGroupObject) : Prop :=
  B.schemeStructure ∧ B.brauerGroupOperation

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
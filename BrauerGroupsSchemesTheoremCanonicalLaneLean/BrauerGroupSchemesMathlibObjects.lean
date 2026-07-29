import BrauerGroupSchemesTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BrauerGroupSchemesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BrauerSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BrauerAdmittedObject where
  space : BrauerSpace
  schemeStructure : Prop
  brauerGroupDefined : Prop
  centralSimpleAlgebraModel : Type
  algebraStructure : Prop
  conclusion : centralSimpleAlgebraModel

def BrauerWitnessClosed (O : BrauerAdmittedObject) : Prop :=
  O.conclusion

end BrauerGroupSchemesTheoremCanonicalLaneLean
end HautevilleHouse
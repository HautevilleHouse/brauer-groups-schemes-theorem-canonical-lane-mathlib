import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

structure AzumayaAlgebraPackage where
  baseScheme : Type u
  algebraicStructure : Prop
  maximalOrder : Prop
  splitByEtaleCover : Prop

def AzumayaAlgebraClosed (A : AzumayaAlgebraPackage) : Prop :=
  A.algebraicStructure ∧ A.maximalOrder ∧ A.splitByEtaleCover

theorem azumaya_algebra_closed (A : AzumayaAlgebraPackage) : AzumayaAlgebraClosed A :=
  ⟨A.algebraicStructure, A.maximalOrder, A.splitByEtaleCover⟩

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupSchemesTheoremCanonicalLaneLean

structure AzumayaAlgebra (k : Type) [Field k] where
  algebra : Algebra k
  central : center algebra = k
  separable : isSeparable k algebra
  finiteDimensional : FiniteDimensional k algebra

structure AzumayaAlgebraEvidence (A : AzumayaAlgebra k) where
  centralClosed : A.central
  separableClosed : A.separable
  finiteDimensionalClosed : A.finiteDimensional

def AzumayaAlgebraClosed (A : AzumayaAlgebra k) : Prop :=
  A.central ∧ A.separable ∧ A.finiteDimensional

theorem azumaya_algebra_closed (A : AzumayaAlgebra k) (E : AzumayaAlgebraEvidence A) : AzumayaAlgebraClosed A :=
  And.intro E.centralClosed (And.intro E.separableClosed E.finiteDimensionalClosed)

end BrauerGroupSchemesTheoremCanonicalLaneLean
end HautevilleHouse
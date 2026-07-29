import BrauerGroupsSchemesTheoremCanonicalLaneLean.BrauerSchemesAdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsSchemesTheoremCanonicalLaneLean

def bridgeClosed (A : BrauerSchemesAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : BrauerSchemesAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BrauerGroupsSchemesTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupSchemesTheoremCanonicalLaneLean

structure ActionSheafCondition (k : Type) [Field k] (F : SheafOnScheme k) where
  action : ∀ (U : OpenSubscheme k), F(U) → AutScheme(U)
  compatibility : ∀ (U V : OpenSubscheme k) (f : U → V), action V ∘ F.map f = F.map f ∘ action U
  locality : ∀ (U : OpenSubscheme k) (s t : F(U)), (∀ (x : U), (action U s) x = (action U t) x) → s = t

def ActionSheafClosed (k : Type) [Field k] (F : SheafOnScheme k) (A : ActionSheafCondition k F) : Prop :=
  A.compatibility ∧ A.locality

theorem action_sheaf_closed (k : Type) [Field k] (F : SheafOnScheme k) (A : ActionSheafCondition k F) : ActionSheafClosed k F A :=
  And.intro A.compatibility A.locality

end BrauerGroupSchemesTheoremCanonicalLaneLean
end HautevilleHouse
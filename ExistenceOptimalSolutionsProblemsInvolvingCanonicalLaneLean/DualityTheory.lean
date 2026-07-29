import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure DualityTheoryPackage where
  primalProblem : Type u
  dualProblem : Type v
  weakDuality : Prop
  strongDuality : Prop
  weakDualityTerm : weakDuality
  strongDualityTerm : strongDuality

def DualityTheoryClosed (P : DualityTheoryPackage) : Prop :=
  P.weakDuality ∧ P.strongDuality

end HautevilleHouse
end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
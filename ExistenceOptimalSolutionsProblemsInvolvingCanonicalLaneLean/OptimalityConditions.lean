import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure OptimalityConditionsPackage where
  necessaryCondition : Prop
  sufficientCondition : Prop
  globalOptimum : Prop
  necessaryConditionTerm : necessaryCondition
  sufficientConditionTerm : sufficientCondition
  globalOptimumTerm : globalOptimum

def OptimalityConditionsClosed (P : OptimalityConditionsPackage) : Prop :=
  P.necessaryCondition ∧ P.sufficientCondition ∧ P.globalOptimum

end HautevilleHouse
end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure ExistenceSolutionsPackage where
  problemDomain : Type u
  solutionSpace : Type v
  existenceCriterion : Prop
  existenceCriterionTerm : existenceCriterion

def ExistenceSolutionsClosed (P : ExistenceSolutionsPackage) : Prop :=
  P.existenceCriterion

end HautevilleHouse
end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
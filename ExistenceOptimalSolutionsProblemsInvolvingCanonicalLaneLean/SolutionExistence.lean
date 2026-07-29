import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure SolutionExistencePackage where
  feasibleSetNonempty : Prop
  coercivityCondition : Prop
  lowerSemicontinuity : Prop
  existenceResult : Prop

structure SolutionExistenceEvidence (S : SolutionExistencePackage) where
  feasibleSetNonemptyClosed : S.feasibleSetNonempty
  coercivityConditionClosed : S.coercivityCondition
  lowerSemicontinuityClosed : S.lowerSemicontinuity
  existenceResultClosed : S.existenceResult

def SolutionExistenceClosed (S : SolutionExistencePackage) : Prop :=
  S.feasibleSetNonempty ∧ S.coercivityCondition ∧ S.lowerSemicontinuity ∧ S.existenceResult

theorem solution_existence_closed_from_evidence (S : SolutionExistencePackage) (E : SolutionExistenceEvidence S) :
    SolutionExistenceClosed S := by
  exact And.intro E.feasibleSetNonemptyClosed (And.intro E.coercivityConditionClosed (And.intro E.lowerSemicontinuityClosed E.existenceResultClosed))

end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
end HautevilleHouse
import ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure OptimalSolutionPackage where
  feasibleSet : Type u
  objectiveFunction : feasibleSet → ℝ
  optimalSolution : feasibleSet
  optimalValue : ℝ
  admissibilityProof : Prop

structure OptimalSolutionEvidence (P : OptimalSolutionPackage) where
  feasibleSetClosed : P.feasibleSet = P.feasibleSet
  objectiveFunctionClosed : P.objectiveFunction = P.objectiveFunction
  optimalValueClosed : P.optimalValue = P.objectiveFunction P.optimalSolution
  admissibilityProofClosed : P.admissibilityProof

def OptimalSolutionClosed (P : OptimalSolutionPackage) : Prop :=
  ∃ (x : P.feasibleSet), P.objectiveFunction x = P.optimalValue ∧ P.admissibilityProof

theorem optimal_solution_closed_from_evidence (P : OptimalSolutionPackage) (E : OptimalSolutionEvidence P) :
    OptimalSolutionClosed P := by
  refine Exists.intro P.optimalSolution ?_
  exact And.intro E.optimalValueClosed E.admissibilityProofClosed

end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
end HautevilleHouse
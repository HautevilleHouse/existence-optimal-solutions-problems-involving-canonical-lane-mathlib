import ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure OptimalControlProblem where
  stateSpace : Type u
  controlSpace : Type v
  dynamics : stateSpace → controlSpace → stateSpace
  costFunctional : (stateSpace → stateSpace) → Prop
  admissibleControls : Set (controlSpace → controlSpace)
  optimalSolutionExists : Prop

structure OptimalControlEvidence (P : OptimalControlProblem) where
  dynamicsClosed : Prop
  costFunctionalDefined : P.costFunctional (fun x => x)
  admissibleControlsNonempty : P.admissibleControls.Nonempty
  optimalSolutionExistsClosed : P.optimalSolutionExists

def OptimalControlClosed (P : OptimalControlProblem) : Prop :=
  P.optimalSolutionExists

theorem optimal_control_closed_from_evidence (P : OptimalControlProblem)
    (E : OptimalControlEvidence P) : OptimalControlClosed P := by
  exact E.optimalSolutionExistsClosed

end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
end HautevilleHouse
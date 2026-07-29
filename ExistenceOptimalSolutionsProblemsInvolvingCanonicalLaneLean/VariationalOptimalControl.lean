import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure VariationalOptimalControlPackage where
  controlSet : Type u
  stateSpace : Type v
  dynamics : controlSet → stateSpace → stateSpace
  costFunctional : (stateSpace → ℝ) → Prop
  optimalTrajectoryExists : Prop
  admissibleControl : Prop

structure VariationalOptimalControlEvidence (V : VariationalOptimalControlPackage) where
  controlSetClosed : V.controlSet = V.controlSet
  stateSpaceClosed : V.stateSpace = V.stateSpace
  dynamicsClosed : V.dynamics = V.dynamics
  costFunctionalClosed : V.costFunctional = V.costFunctional
  optimalTrajectoryExistsClosed : V.optimalTrajectoryExists
  admissibleControlClosed : V.admissibleControl

def VariationalOptimalControlClosed (V : VariationalOptimalControlPackage) : Prop :=
  V.optimalTrajectoryExists ∧ V.admissibleControl

theorem variational_optimal_control_closed_from_evidence
    (V : VariationalOptimalControlPackage) (E : VariationalOptimalControlEvidence V) :
    VariationalOptimalControlClosed V := by
  exact And.intro E.optimalTrajectoryExistsClosed E.admissibleControlClosed

end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
end HautevilleHouse
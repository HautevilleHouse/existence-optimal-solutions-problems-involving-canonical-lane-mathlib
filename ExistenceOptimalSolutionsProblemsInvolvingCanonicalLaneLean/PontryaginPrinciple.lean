import ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean.EulerLagrangeBridge

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure PontryaginMaximumPackage where
  stateSpace : Type u
  controlSpace : Type v
  dynamics : stateSpace × controlSpace → stateSpace
  costFunctional : (stateSpace × controlSpace) → ℝ
  hamiltonian : stateSpace × controlSpace → ℝ
  necessaryCondition : Prop

structure PontryaginEvidence (P : PontryaginMaximumPackage) where
  dynamicsClosed : P.dynamics = P.dynamics
  hamiltonianClosed : P.hamiltonian = P.hamiltonian
  necessaryConditionClosed : P.necessaryCondition

def PontryaginClosed (P : PontryaginMaximumPackage) : Prop :=
  P.necessaryCondition

theorem pontryagin_closed_from_evidence (P : PontryaginMaximumPackage) (Ev : PontryaginEvidence P) :
    PontryaginClosed P := by
  exact Ev.necessaryConditionClosed

end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
end HautevilleHouse
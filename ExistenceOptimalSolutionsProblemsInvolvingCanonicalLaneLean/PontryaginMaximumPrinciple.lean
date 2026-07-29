import ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean.CalculusOfVariations

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure PontryaginMaximumPackage where
  stateSpace : Type u
  controlSpace : Type v
  hamiltonian : stateSpace → controlSpace → Prop
  adjointEquation : Prop
  optimalityCondition : Prop
  existenceOptimalControl : Prop

structure PontryaginMaximumEvidence (P : PontryaginMaximumPackage) where
  hamiltonianDefined : P.hamiltonian
  adjointEquationClosed : P.adjointEquation
  optimalityConditionClosed : P.optimalityCondition
  existenceOptimalControlClosed : P.existenceOptimalControl

def PontryaginMaximumClosed (P : PontryaginMaximumPackage) : Prop :=
  P.hamiltonian ∧ P.adjointEquation ∧ P.optimalityCondition ∧ P.existenceOptimalControl

theorem pontryagin_maximum_closed_from_evidence (P : PontryaginMaximumPackage)
    (E : PontryaginMaximumEvidence P) : PontryaginMaximumClosed P := by
  exact And.intro E.hamiltonianDefined
    (And.intro E.adjointEquationClosed
      (And.intro E.optimalityConditionClosed E.existenceOptimalControlClosed))

end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
end HautevilleHouse
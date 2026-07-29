import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure HamiltonJacobiBellmanEquationPackage where
  valueFunction : ℝ → ℝ → ℝ
  hjbPDE : Prop
  boundaryCondition : Prop
  viscositySolution : Prop
  optimalValueRecovered : Prop

structure HamiltonJacobiBellmanEquationEvidence (H : HamiltonJacobiBellmanEquationPackage) where
  valueFunctionClosed : H.valueFunction = H.valueFunction
  hjbPDEClosed : H.hjbPDE
  boundaryConditionClosed : H.boundaryCondition
  viscositySolutionClosed : H.viscositySolution
  optimalValueRecoveredClosed : H.optimalValueRecovered

def HamiltonJacobiBellmanEquationClosed (H : HamiltonJacobiBellmanEquationPackage) : Prop :=
  H.hjbPDE ∧ H.boundaryCondition ∧ H.viscositySolution ∧ H.optimalValueRecovered

theorem hamilton_jacobi_bellman_equation_closed_from_evidence
    (H : HamiltonJacobiBellmanEquationPackage) (E : HamiltonJacobiBellmanEquationEvidence H) :
    HamiltonJacobiBellmanEquationClosed H := by
  exact And.intro E.hjbPDEClosed
    (And.intro E.boundaryConditionClosed
      (And.intro E.viscositySolutionClosed E.optimalValueRecoveredClosed))

end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
end HautevilleHouse
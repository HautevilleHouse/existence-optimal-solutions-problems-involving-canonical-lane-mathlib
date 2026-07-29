import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure DualVariationalFramework where
  primalProblem : Prop
  dualProblem : Prop
  strongDuality : Prop
  saddlePointCondition : Prop

structure DualVariationalEvidence (D : DualVariationalFramework) where
  primalProblemClosed : D.primalProblem
  dualProblemClosed : D.dualProblem
  strongDualityClosed : D.strongDuality
  saddlePointConditionClosed : D.saddlePointCondition

def DualVariationalClosed (D : DualVariationalFramework) : Prop :=
  D.primalProblem ∧ D.dualProblem ∧ D.strongDuality ∧ D.saddlePointCondition

theorem dual_variational_closed_from_evidence (D : DualVariationalFramework) (E : DualVariationalEvidence D) :
    DualVariationalClosed D := by
  exact And.intro E.primalProblemClosed (And.intro E.dualProblemClosed (And.intro E.strongDualityClosed E.saddlePointConditionClosed))

end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
end HautevilleHouse
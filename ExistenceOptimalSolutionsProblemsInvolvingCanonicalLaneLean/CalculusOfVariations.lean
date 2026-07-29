import ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean.OptimalControl

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure EulerLagrangeSystem where
  functional : Prop
  lagrangian : Type u
  extremalCondition : Prop
  existenceMinimizer : Prop

structure EulerLagrangeEvidence (E : EulerLagrangeSystem) where
  functionalDefined : E.functional
  extremalConditionClosed : E.extremalCondition
  existenceMinimizerClosed : E.existenceMinimizer

def EulerLagrangeClosed (E : EulerLagrangeSystem) : Prop :=
  E.functional ∧ E.extremalCondition ∧ E.existenceMinimizer

theorem euler_lagrange_closed_from_evidence (E : EulerLagrangeSystem)
    (Ev : EulerLagrangeEvidence E) : EulerLagrangeClosed E := by
  exact And.intro Ev.functionalDefined
    (And.intro Ev.extremalConditionClosed Ev.existenceMinimizerClosed)

end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
end HautevilleHouse
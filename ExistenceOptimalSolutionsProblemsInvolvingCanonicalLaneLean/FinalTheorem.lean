import ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

def ConstrainedExistenceOptimalSolutionsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_existence_optimal_solutions_endgame (A : AdmissibleClass) :
    ConstrainedExistenceOptimalSolutionsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
end HautevilleHouse
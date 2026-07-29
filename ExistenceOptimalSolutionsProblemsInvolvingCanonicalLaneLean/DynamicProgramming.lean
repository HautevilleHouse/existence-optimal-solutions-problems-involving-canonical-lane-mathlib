import ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean.PontryaginMaximumPrinciple

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure BellmanEquation where
  valueFunction : Type u → Prop
  optimalityPrinciple : Prop
  existenceSolution : Prop

structure BellmanEvidence (B : BellmanEquation) where
  valueFunctionDefined : B.valueFunction
  optimalityPrincipleClosed : B.optimalityPrinciple
  existenceSolutionClosed : B.existenceSolution

def BellmanClosed (B : BellmanEquation) : Prop :=
  B.valueFunction ∧ B.optimalityPrinciple ∧ B.existenceSolution

theorem bellman_closed_from_evidence (B : BellmanEquation)
    (E : BellmanEvidence B) : BellmanClosed B := by
  exact And.intro E.valueFunctionDefined
    (And.intro E.optimalityPrincipleClosed E.existenceSolutionClosed)

end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
end HautevilleHouse
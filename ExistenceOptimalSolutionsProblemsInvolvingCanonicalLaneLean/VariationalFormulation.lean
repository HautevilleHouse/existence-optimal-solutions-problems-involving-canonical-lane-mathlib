import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure VariationalFormulationPackage where
  functional : Type u
  admissibleSet : Type v
  eulerLagrangeEquation : Prop
  convexityCondition : Prop
  eulerLagrangeEquationTerm : eulerLagrangeEquation
  convexityConditionTerm : convexityCondition

def VariationalFormulationClosed (P : VariationalFormulationPackage) : Prop :=
  P.eulerLagrangeEquation ∧ P.convexityCondition

end HautevilleHouse
end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure RegularityStabilityPackage where
  solutionRegularity : Prop
  stabilityUnderPerturbation : Prop
  convergenceRate : Prop
  solutionRegularityTerm : solutionRegularity
  stabilityUnderPerturbationTerm : stabilityUnderPerturbation
  convergenceRateTerm : convergenceRate

def RegularityStabilityClosed (P : RegularityStabilityPackage) : Prop :=
  P.solutionRegularity ∧ P.stabilityUnderPerturbation ∧ P.convergenceRate

end HautevilleHouse
end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
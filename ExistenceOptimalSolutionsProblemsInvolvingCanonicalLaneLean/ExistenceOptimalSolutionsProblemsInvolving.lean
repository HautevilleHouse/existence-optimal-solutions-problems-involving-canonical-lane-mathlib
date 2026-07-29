import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure AdmissibleClass where
  object : ExistenceOptimalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ExistenceOptimalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
end HautevilleHouse
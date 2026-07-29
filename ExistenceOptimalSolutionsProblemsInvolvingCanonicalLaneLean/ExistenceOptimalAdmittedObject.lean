import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure ExistenceOptimalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ExistenceOptimalAdmittedObject where
  space : ExistenceOptimalSpace
  problemType : Prop
  optimalExists : Prop
  uniqueSolution : Prop
  conclusion : optimalExists

def ExistenceOptimalWitnessClosed (O : ExistenceOptimalAdmittedObject) : Prop :=
  O.optimalExists

end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean

structure ConvexAnalysisPackage where
  convexSet : Type u
  convexFunction : Type v
  subdifferential : Type w
  fenchelConjugate : Type x
  convexSetDefined : Prop
  convexFunctionDefined : Prop
  subdifferentialDefined : Prop
  fenchelConjugateDefined : Prop
  convexSetDefinedTerm : convexSetDefined
  convexFunctionDefinedTerm : convexFunctionDefined
  subdifferentialDefinedTerm : subdifferentialDefined
  fenchelConjugateDefinedTerm : fenchelConjugateDefined

def ConvexAnalysisClosed (P : ConvexAnalysisPackage) : Prop :=
  P.convexSetDefined ∧ P.convexFunctionDefined ∧ P.subdifferentialDefined ∧ P.fenchelConjugateDefined

end HautevilleHouse
end ExistenceOptimalSolutionsProblemsInvolvingCanonicalLaneLean
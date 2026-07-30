import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean

structure NeuralHeuristicArchitecture where
  inputDimension : Nat
  hiddenLayers : List Nat
  activation : String
  outputDimension : Nat
  forwardPass : Prop
  trainingStable : Prop
  forwardPassTerm : forwardPass
  trainingStableTerm : trainingStable

structure NeuralHeuristicArchitecturePackage where
  architecture : NeuralHeuristicArchitecture
  admissible : AdmissibleClass
  heuristicMapping : Prop

end NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse
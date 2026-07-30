import HautevilleHouse.NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : NeuralHeuristicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NeuralHeuristicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse

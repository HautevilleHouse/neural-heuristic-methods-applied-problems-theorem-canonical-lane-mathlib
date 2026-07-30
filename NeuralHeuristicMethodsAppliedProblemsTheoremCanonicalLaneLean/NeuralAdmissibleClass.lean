import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean

structure NeuralAdmittedObject where
  network : Type
  inputSpace : Type
  outputSpace : Type
  trainingObjective : Prop
  heuristicMethod : Prop
  convergenceGuarantee : Prop
  conclusion : convergenceGuarantee

structure AdmissibleClass where
  object : NeuralAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  convergenceGuarantee A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse
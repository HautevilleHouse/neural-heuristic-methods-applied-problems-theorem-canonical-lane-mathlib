import NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean.NeuralGateLemmas

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean

def ConstrainedNeuralClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neural_endgame (A : AdmissibleClass) :
    ConstrainedNeuralClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse
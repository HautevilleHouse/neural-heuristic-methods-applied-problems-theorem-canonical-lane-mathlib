import HautevilleHouse.NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean

def ConstrainedNeuralHeuristicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neural_heuristic_endgame (A : AdmissibleClass) :
    ConstrainedNeuralHeuristicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse

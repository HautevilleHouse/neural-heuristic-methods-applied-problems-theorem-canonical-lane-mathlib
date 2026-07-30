import HautevilleHouse.NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean.ProblemDomain

/-!
# Neural Network Package
This module provides an abstraction for neural network models used in heuristic methods.
-/

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean

structure NeuralNetwork (Input : Type u) (Output : Type v) where
  layers : ℕ
  parameters : Type w
  forward : Input → Output
  trained : Prop
  architectureDescription : String

def NetworkError {Input Output : Type u} [NormedAddCommGroup Output] (NN : NeuralNetwork Input Output) (target : Input → Output) (x : Input) : ℝ :=
  ‖NN.forward x - target x‖

structure NeuralNetworkEvidence (Input Output : Type u) [NormedAddCommGroup Output] (NN : NeuralNetwork Input Output) (target : Input → Output) where
  trainedClosed : NN.trained
  errorBound : ℝ
  errorBoundProof : ∀ x : Input, NetworkError NN target x ≤ errorBound

def NeuralNetworkClosed (Input Output : Type u) [NormedAddCommGroup Output] (NN : NeuralNetwork Input Output) (target : Input → Output) : Prop :=
  NN.trained ∧ (∃ (e : ℝ), ∀ x : Input, NetworkError NN target x ≤ e)

theorem neural_network_closed_from_evidence (Input Output : Type u) [NormedAddCommGroup Output] (NN : NeuralNetwork Input Output) (target : Input → Output) (E : NeuralNetworkEvidence Input Output NN target) : NeuralNetworkClosed NN target := by
  exact And.intro E.trainedClosed ⟨E.errorBound, E.errorBoundProof⟩

end NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse

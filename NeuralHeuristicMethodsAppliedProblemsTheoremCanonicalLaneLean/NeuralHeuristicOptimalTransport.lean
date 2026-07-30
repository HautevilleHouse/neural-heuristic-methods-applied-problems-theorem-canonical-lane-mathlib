import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsTheorem

structure NeuralOptimalTransportPackage (M : NeuralNetworkModel) where
  transportPlan : TransportPlan M
  costFunction : CostFunction
  planFeasibility : Prop
  optimalityCondition : Prop
  planFeasibilityClosed : planFeasibility
  optimalityConditionClosed : optimalityCondition

structure NeuralOptimalTransportEvidence {M : NeuralNetworkModel} (N : NeuralOptimalTransportPackage M) where
  planFeasibilityClosed : N.planFeasibility
  optimalityConditionClosed : N.optimalityCondition

def NeuralOptimalTransportClosed {M : NeuralNetworkModel} (N : NeuralOptimalTransportPackage M) : Prop :=
  N.planFeasibility ∧ N.optimalityCondition

theorem neural_optimal_transport_closed_from_evidence
    {M : NeuralNetworkModel} (N : NeuralOptimalTransportPackage M)
    (E : NeuralOptimalTransportEvidence N) : NeuralOptimalTransportClosed N := by
  exact And.intro E.planFeasibilityClosed E.optimalityConditionClosed

end NeuralHeuristicMethodsAppliedProblemsTheorem
end HautevilleHouse
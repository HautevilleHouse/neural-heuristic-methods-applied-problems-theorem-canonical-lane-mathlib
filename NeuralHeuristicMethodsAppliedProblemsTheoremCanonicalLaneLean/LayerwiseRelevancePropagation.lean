import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsTheorem

structure LayerwiseRelevancePackage (M : NeuralNetworkModel) where
  relevanceScores : LayerwiseRelevanceMap M
  conservationLaw : Prop
  epsilonStability : Prop
  conservationLawClosed : conservationLaw
  epsilonStabilityClosed : epsilonStability

structure LayerwiseRelevanceEvidence {M : NeuralNetworkModel} (L : LayerwiseRelevancePackage M) where
  conservationLawClosed : L.conservationLaw
  epsilonStabilityClosed : L.epsilonStability

def LayerwiseRelevanceClosed {M : NeuralNetworkModel} (L : LayerwiseRelevancePackage M) : Prop :=
  L.conservationLaw ∧ L.epsilonStability

theorem layerwise_relevance_closed_from_evidence
    {M : NeuralNetworkModel} (L : LayerwiseRelevancePackage M)
    (E : LayerwiseRelevanceEvidence L) : LayerwiseRelevanceClosed L := by
  exact And.intro E.conservationLawClosed E.epsilonStabilityClosed

end NeuralHeuristicMethodsAppliedProblemsTheorem
end HautevilleHouse
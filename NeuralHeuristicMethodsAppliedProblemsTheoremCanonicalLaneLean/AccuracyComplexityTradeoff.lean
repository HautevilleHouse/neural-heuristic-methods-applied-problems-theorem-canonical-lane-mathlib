import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean

structure AccuracyComplexityTradeoffPackage {G : HNSWGraphPackage} {A : GNNArchitecturePackage G}
    {B : LocalSearchBeamPackage A} where
  recallTarget : Float
  latencyBound : Float
  memoryBound : Float

structure AccuracyComplexityTradeoffEvidence {G : HNSWGraphPackage} {A : GNNArchitecturePackage G}
    {B : LocalSearchBeamPackage A} (T : AccuracyComplexityTradeoffPackage B) where
  recallTargetNonnegative : T.recallTarget ≥ 0.0
  recallTargetLeOne : T.recallTarget ≤ 1.0
  latencyBoundPositive : T.latencyBound > 0.0
  memoryBoundPositive : T.memoryBound > 0.0

def AccuracyComplexityTradeoffClosed {G : HNSWGraphPackage} {A : GNNArchitecturePackage G}
    {B : LocalSearchBeamPackage A} (T : AccuracyComplexityTradeoffPackage B) : Prop :=
  T.recallTarget ≥ 0.0 ∧ T.recallTarget ≤ 1.0 ∧ T.latencyBound > 0.0 ∧ T.memoryBound > 0.0

theorem accuracy_complexity_tradeoff_closed_from_evidence
    {G : HNSWGraphPackage} {A : GNNArchitecturePackage G} {B : LocalSearchBeamPackage A}
    (T : AccuracyComplexityTradeoffPackage B) (E : AccuracyComplexityTradeoffEvidence T) :
    AccuracyComplexityTradeoffClosed T := by
  exact And.intro E.recallTargetNonnegative
    (And.intro E.recallTargetLeOne (And.intro E.latencyBoundPositive E.memoryBoundPositive))

end NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse

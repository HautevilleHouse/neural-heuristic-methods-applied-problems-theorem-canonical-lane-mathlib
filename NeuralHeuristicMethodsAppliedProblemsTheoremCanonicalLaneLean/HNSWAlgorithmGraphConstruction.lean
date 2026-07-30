import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean

structure HNSWGraphPackage where
  layers : Nat
  entryPoint : Nat
  maxConnectionsPerLayer : Nat
  efConstruction : Nat
  distanceMetric : String

structure HNSWGraphEvidence (G : HNSWGraphPackage) where
  layersPositive : G.layers > 0
  efConstructionPositive : G.efConstruction > 0

def HNSWGraphClosed (G : HNSWGraphPackage) : Prop :=
  G.layers > 0 ∧ G.efConstruction > 0

theorem hnsw_graph_closed_from_evidence (G : HNSWGraphPackage) (E : HNSWGraphEvidence G) :
    HNSWGraphClosed G := by
  exact And.intro E.layersPositive E.efConstructionPositive

end NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse

import HautevilleHouse.NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Problem Domain Package
This module defines the structure of the applied problem domain, including problem instances, heuristic methods, and solution quality measures.
-/

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean

structure ProblemDomain where
  problemType : Type u
  instanceFamily : Type v
  costFunction : problemType → InstanceFamily → ℝ
  optimalCost : problemType → InstanceFamily → ℝ
  admissibleHeuristics : List (problemType → InstanceFamily → ℝ)
  heuristicAdmissible : ∀ (h : problemType → InstanceFamily → ℝ), h ∈ admissibleHeuristics → ∀ p i, h p i ≤ costFunction p i

def HeuristicError (f : ProblemDomain) (h : f.problemType → f.InstanceFamily → ℝ) (p : f.problemType) (i : f.InstanceFamily) : ℝ :=
  f.costFunction p i - h p i

end NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse

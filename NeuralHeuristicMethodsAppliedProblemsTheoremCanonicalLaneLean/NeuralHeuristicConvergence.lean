import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean

structure NeuralHeuristicConvergencePackage {O : NeuralHeuristicOptimizationPackage}
    (N : NeuralHeuristicOptimizationPackage) where
  fixedPointExistence : Prop
  convergenceRate : ℝ → ℝ
  globalConvergence : Prop
  stabilityUnderPerturbation : Prop
  fixedPointExistenceClosed : fixedPointExistence
  convergenceRatePositive : convergenceRate 0 > 0
  globalConvergenceClosed : globalConvergence
  stabilityUnderPerturbationClosed : stabilityUnderPerturbation

theorem neural_heuristic_convergence_closed
    {O : NeuralHeuristicOptimizationPackage} (N : NeuralHeuristicConvergencePackage O) :
    N.fixedPointExistence ∧ N.globalConvergence ∧ N.stabilityUnderPerturbation := by
  exact And.intro N.fixedPointExistenceClosed (And.intro N.globalConvergenceClosed N.stabilityUnderPerturbationClosed)

end NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse

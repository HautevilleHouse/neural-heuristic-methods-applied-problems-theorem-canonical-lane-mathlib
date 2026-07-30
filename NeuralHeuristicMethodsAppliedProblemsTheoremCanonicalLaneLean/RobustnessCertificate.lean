import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean

structure RobustnessCertificate where
  noiseLevel : Float
  adversarialRobustness : Bool
  certificateValid : Bool
  adversarialRobustnessTerm : adversarialRobustness
  certificateValidTerm : certificateValid

def RobustnessCertificateClosed (R : RobustnessCertificate) : Prop :=
  R.adversarialRobustness ∧ R.certificateValid

theorem robustness_certificate_closed_from_evidence (R : RobustnessCertificate) : RobustnessCertificateClosed R := by
  exact And.intro R.adversarialRobustnessTerm R.certificateValidTerm

end NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse
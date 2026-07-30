import NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean.NeuralAdmissibleClass

namespace HautevilleHouse
namespace NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  convergenceGuarantee A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuralHeuristicMethodsAppliedProblemsTheoremCanonicalLaneLean
end HautevilleHouse
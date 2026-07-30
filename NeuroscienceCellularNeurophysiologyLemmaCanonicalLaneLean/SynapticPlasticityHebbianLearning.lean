import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure HebbianLearningRule where
  preSynapticActivity : ℝ → ℝ
  postSynapticActivity : ℝ → ℝ
  weightUpdate : (ℝ → ℝ) → (ℝ → ℝ) → ℝ → ℝ
  learningRate : ℝ
  correlationWindow : ℝ
  ruleWellDefined : Prop

structure HebbianLearningEvidence (H : HebbianLearningRule) where
  learningRatePositive : H.learningRate > 0
  correlationWindowPositive : H.correlationWindow > 0
  ruleWellDefinedClosed : H.ruleWellDefined

def HebbianLearningClosed (H : HebbianLearningRule) : Prop :=
  H.ruleWellDefined ∧ H.learningRate > 0 ∧ H.correlationWindow > 0

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningRule) (E : HebbianLearningEvidence H) :
    HebbianLearningClosed H := by
  exact And.intro E.ruleWellDefinedClosed (And.intro E.learningRatePositive E.correlationWindowPositive)

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse

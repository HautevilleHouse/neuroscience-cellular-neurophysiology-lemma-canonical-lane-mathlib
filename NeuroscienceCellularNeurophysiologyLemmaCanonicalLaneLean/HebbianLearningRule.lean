import canonicalLaneMathlib.AdmissibleClass

/-!
# Hebbian Learning Rule Package
-/

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure HebbianLearningRulePackage where
  presynapticActivity : Type
  postsynapticActivity : Type
  synapticWeight : Type
  hebbianPlasticity : Prop
  weightUpdateRule : Prop
  cooperativity : Prop

structure HebbianLearningRuleEvidence (H : HebbianLearningRulePackage) where
  hebbianPlasticityClosed : H.hebbianPlasticity
  weightUpdateRuleClosed : H.weightUpdateRule
  cooperativityClosed : H.cooperativity

def HebbianLearningRuleClosed (H : HebbianLearningRulePackage) : Prop :=
  H.hebbianPlasticity ∧ H.weightUpdateRule ∧ H.cooperativity

theorem hebbian_learning_rule_closed_from_evidence
    (H : HebbianLearningRulePackage) (E : HebbianLearningRuleEvidence H) :
    HebbianLearningRuleClosed H := by
  exact And.intro E.hebbianPlasticityClosed (And.intro E.weightUpdateRuleClosed E.cooperativityClosed)

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse
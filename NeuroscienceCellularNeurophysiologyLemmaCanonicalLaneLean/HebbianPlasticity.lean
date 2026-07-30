import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure HebbianPlasticityRule where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  synapticWeightChange : Prop
  coincidenceDetection : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityRule) where
  presynapticActivityClosed : H.presynapticActivity
  postsynapticActivityClosed : H.postsynapticActivity
  synapticWeightChangeClosed : H.synapticWeightChange
  coincidenceDetectionClosed : H.coincidenceDetection
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression

def HebbianPlasticityClosed (H : HebbianPlasticityRule) : Prop :=
  H.presynapticActivity ∧ H.postsynapticActivity ∧ H.synapticWeightChange ∧
  H.coincidenceDetection ∧ H.longTermPotentiation ∧ H.longTermDepression

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityRule) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.presynapticActivityClosed
    (And.intro E.postsynapticActivityClosed
      (And.intro E.synapticWeightChangeClosed
        (And.intro E.coincidenceDetectionClosed
          (And.intro E.longTermPotentiationClosed E.longTermDepressionClosed))))

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean.HodgkinHuxleyEquations

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

/-! Hebbian plasticity and synaptic weight update. -/

structure HebbianPlasticityPackage where
  preSynapticActivity : ℝ → ℝ
  postSynapticActivity : ℝ → ℝ
  weight : ℝ → ℝ
  learningRate : ℝ
  weightUpdateLaw : Prop
  weightUpdateLawTerm : weightUpdateLaw

structure HebbianPlasticityEvidence (P : HebbianPlasticityPackage) where
  weightUpdateLawClosed : P.weightUpdateLaw

def HebbianPlasticityClosed (P : HebbianPlasticityPackage) : Prop :=
  P.weightUpdateLaw

theorem hebbian_plasticity_closed_from_evidence (P : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence P) : HebbianPlasticityClosed P :=
  E.weightUpdateLawClosed

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse

import HautevilleHouse.NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean.HebbianLearning

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

/-! Synaptic input integration and spiking threshold. -/

structure SynapticIntegrationPackage where
  inputs : List ℝ
  weights : List ℝ
  threshold : ℝ
  activation : ℝ
  spikeGenerated : Prop
  integrationLaw : Prop
  integrationLawTerm : integrationLaw

structure SynapticIntegrationEvidence (P : SynapticIntegrationPackage) where
  integrationLawClosed : P.integrationLaw

def SynapticIntegrationClosed (P : SynapticIntegrationPackage) : Prop :=
  P.integrationLaw

theorem synaptic_integration_closed_from_evidence (P : SynapticIntegrationPackage)
    (E : SynapticIntegrationEvidence P) : SynapticIntegrationClosed P :=
  E.integrationLawClosed

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse

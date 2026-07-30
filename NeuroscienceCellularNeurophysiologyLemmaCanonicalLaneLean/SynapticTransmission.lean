import canonicalLaneMathlib.AdmissibleClass

/-!
# Synaptic Transmission Package
-/

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure SynapticTransmissionPackage where
  presynapticTerminal : Type
  neurotransmitterRelease : Type
  postsynapticReceptor : Type
  vesicleFusion : Prop
  receptorBinding : Prop
  postsynapticPotential : Prop

structure SynapticTransmissionEvidence (S : SynapticTransmissionPackage) where
  vesicleFusionClosed : S.vesicleFusion
  receptorBindingClosed : S.receptorBinding
  postsynapticPotentialClosed : S.postsynapticPotential

def SynapticTransmissionClosed (S : SynapticTransmissionPackage) : Prop :=
  S.vesicleFusion ∧ S.receptorBinding ∧ S.postsynapticPotential

theorem synaptic_transmission_closed_from_evidence
    (S : SynapticTransmissionPackage) (E : SynapticTransmissionEvidence S) :
    SynapticTransmissionClosed S := by
  exact And.intro E.vesicleFusionClosed (And.intro E.receptorBindingClosed E.postsynapticPotentialClosed)

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure IonChannelEvidenceTerms where
  sodiumChannelDynamics : Prop
  potassiumChannelDynamics : Prop
  leakChannelDynamics : Prop
  gatingVariableKinetics : Prop
  channelEvidenceClosed : sodiumChannelDynamics ∧ potassiumChannelDynamics ∧ leakChannelDynamics ∧ gatingVariableKinetics

structure SynapticTransmissionEvidenceTerms where
  neurotransmitterRelease : Prop
  postsynapticReceptorBinding : Prop
  synapticCurrentGenerated : Prop
  transmissionEvidenceClosed : neurotransmitterRelease ∧ postsynapticReceptorBinding ∧ synapticCurrentGenerated

structure NeuralFieldEvidenceTerms where
  firingRateField : Prop
  synapticWeightField : Prop
  fieldDynamicsEvolution : Prop
  fieldEvidenceClosed : firingRateField ∧ synapticWeightField ∧ fieldDynamicsEvolution

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse
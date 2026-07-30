import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NeuroscienceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NeuroscienceAdmittedObject where
  space : NeuroscienceSpace
  membranePotential : Real → Real → Real  -- time, space -> voltage
  ionChannelState : Real → Real → Real → Real  -- time, space, ion species -> conductance
  membranePotentialDynamics : Prop
  ionChannelGating : Prop
  synapticInput : Prop
  conclusion : membranePotentialDynamics ∧ ionChannelGating ∧ synapticInput

structure NeuroscienceEndgameState where
  object : NeuroscienceAdmittedObject

def NeuroscienceWitnessClosed (O : NeuroscienceAdmittedObject) : Prop :=
  O.conclusion

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse
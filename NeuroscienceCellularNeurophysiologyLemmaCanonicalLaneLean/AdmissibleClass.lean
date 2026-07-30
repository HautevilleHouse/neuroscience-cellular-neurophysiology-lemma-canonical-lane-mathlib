import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure AdmissibleObject where
  membranePotential : Prop
  ionChannelState : Prop
  synapticInput : Prop
  actionPotentialGenerated : Prop

def admissibleClosure (A : AdmissibleObject) : Prop :=
  A.membranePotential ∧ A.ionChannelState ∧ A.synapticInput ∧ A.actionPotentialGenerated

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure IonChannelKinetics where
  channelTypes : List String
  activationRates : String → ℝ → ℝ
  inactivationRates : String → ℝ → ℝ
  steadyStateValues : String → ℝ → ℝ
  timeConstants : String → ℝ → ℝ
  kineticsClosed : Prop

structure KineticsEvidence (K : IonChannelKinetics) where
  channelTypesNonempty : K.channelTypes ≠ []
  ratesContinuous : ∀ ch ∈ K.channelTypes, Continuous (K.activationRates ch) ∧ Continuous (K.inactivationRates ch)
  kineticsClosedTerm : K.kineticsClosed

def KineticsClosed (K : IonChannelKinetics) : Prop :=
  K.kineticsClosed ∧ K.channelTypes ≠ [] ∧ (∀ ch ∈ K.channelTypes, Continuous (K.activationRates ch) ∧ Continuous (K.inactivationRates ch))

theorem kinetics_closed_from_evidence (K : IonChannelKinetics) (E : KineticsEvidence K) :
    KineticsClosed K := by
  exact And.intro E.kineticsClosedTerm (And.intro E.channelTypesNonempty E.ratesContinuous)

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse

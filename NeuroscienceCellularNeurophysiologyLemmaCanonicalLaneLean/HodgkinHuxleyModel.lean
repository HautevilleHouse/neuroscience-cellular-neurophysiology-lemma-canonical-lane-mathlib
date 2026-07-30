import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure HodgkinHuxleyEquations where
  membraneCapacitance : Prop
  sodiumConductance : Prop
  potassiumConductance : Prop
  leakConductance : Prop
  gatingVariables : Prop
  actionPotentialModel : Prop

data SodiumActivation : Prop where
  mGate : Prop
  hGate : Prop

data PotassiumActivation : Prop where
  nGate : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyEquations) where
  membraneCapacitanceClosed : H.membraneCapacitance
  sodiumConductanceClosed : H.sodiumConductance
  potassiumConductanceClosed : H.potassiumConductance
  leakConductanceClosed : H.leakConductance
  gatingVariablesClosed : H.gatingVariables
  actionPotentialModelClosed : H.actionPotentialModel

def HodgkinHuxleyClosed (H : HodgkinHuxleyEquations) : Prop :=
  H.membraneCapacitance ∧ H.sodiumConductance ∧ H.potassiumConductance ∧
  H.leakConductance ∧ H.gatingVariables ∧ H.actionPotentialModel

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyEquations) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.membraneCapacitanceClosed
    (And.intro E.sodiumConductanceClosed
      (And.intro E.potassiumConductanceClosed
        (And.intro E.leakConductanceClosed
          (And.intro E.gatingVariablesClosed E.actionPotentialModelClosed))))

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

/-!
# Hodgkin-Huxley Circuit Package
-/

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure HodgkinHuxleyCircuitPackage where
  sodiumChannel : Type
  potassiumChannel : Type
  leakChannel : Type
  activationDynamics : Prop
  inactivationDynamics : Prop
  actionPotentialModel : Prop

structure HodgkinHuxleyCircuitEvidence (H : HodgkinHuxleyCircuitPackage) where
  activationDynamicsClosed : H.activationDynamics
  inactivationDynamicsClosed : H.inactivationDynamics
  actionPotentialModelClosed : H.actionPotentialModel

def HodgkinHuxleyCircuitClosed (H : HodgkinHuxleyCircuitPackage) : Prop :=
  H.activationDynamics ∧ H.inactivationDynamics ∧ H.actionPotentialModel

theorem hodgkin_huxley_circuit_closed_from_evidence
    (H : HodgkinHuxleyCircuitPackage) (E : HodgkinHuxleyCircuitEvidence H) :
    HodgkinHuxleyCircuitClosed H := by
  exact And.intro E.activationDynamicsClosed (And.intro E.inactivationDynamicsClosed E.actionPotentialModelClosed)

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse
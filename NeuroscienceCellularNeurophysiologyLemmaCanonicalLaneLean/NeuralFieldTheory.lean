import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure NeuralFieldModel where
  populationActivity : Prop
  connectivityKernel : Prop
  firingRateFunction : Prop
  propagationSpeed : Prop
  patternFormation : Prop

structure NeuralFieldEvidence (N : NeuralFieldModel) where
  populationActivityClosed : N.populationActivity
  connectivityKernelClosed : N.connectivityKernel
  firingRateFunctionClosed : N.firingRateFunction
  propagationSpeedClosed : N.propagationSpeed
  patternFormationClosed : N.patternFormation

def NeuralFieldClosed (N : NeuralFieldModel) : Prop :=
  N.populationActivity ∧ N.connectivityKernel ∧ N.firingRateFunction ∧
  N.propagationSpeed ∧ N.patternFormation

theorem neural_field_closed_from_evidence (N : NeuralFieldModel) (E : NeuralFieldEvidence N) :
    NeuralFieldClosed N := by
  exact And.intro E.populationActivityClosed
    (And.intro E.connectivityKernelClosed
      (And.intro E.firingRateFunctionClosed
        (And.intro E.propagationSpeedClosed E.patternFormationClosed)))

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse
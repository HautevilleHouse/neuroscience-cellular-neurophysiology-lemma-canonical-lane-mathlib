import canonicalLaneMathlib.AdmissibleClass

/-!
# Neural Membrane Dynamics Package
-/

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure NeuralMembraneDynamicsPackage where
  lipidBilayer : Type
  ionChannelDistribution : Type
  capacitance : Prop
  equilibriumPotential : Prop
  nernstEquation : Prop

structure NeuralMembraneDynamicsEvidence (N : NeuralMembraneDynamicsPackage) where
  capacitanceClosed : N.capacitance
  equilibriumPotentialClosed : N.equilibriumPotential
  nernstEquationClosed : N.nernstEquation

def NeuralMembraneDynamicsClosed (N : NeuralMembraneDynamicsPackage) : Prop :=
  N.capacitance ∧ N.equilibriumPotential ∧ N.nernstEquation

theorem neural_membrane_dynamics_closed_from_evidence
    (N : NeuralMembraneDynamicsPackage) (E : NeuralMembraneDynamicsEvidence N) :
    NeuralMembraneDynamicsClosed N := by
  exact And.intro E.capacitanceClosed (And.intro E.equilibriumPotentialClosed E.nernstEquationClosed)

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse
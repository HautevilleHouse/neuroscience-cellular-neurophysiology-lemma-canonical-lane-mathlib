import HautevilleHouse.NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

def ConstrainedCellularNeurophysiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cellular_neurophysiology_endgame (A : AdmissibleClass) :
    ConstrainedCellularNeurophysiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse

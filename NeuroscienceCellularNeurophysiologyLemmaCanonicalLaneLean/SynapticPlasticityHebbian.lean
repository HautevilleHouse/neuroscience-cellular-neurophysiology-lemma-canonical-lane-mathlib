import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure HebbianPlasticity where
  presynapticActivity : ℝ → ℝ
  postsynapticActivity : ℝ → ℝ
  learningRate : ℝ
  weight : ℝ → ℝ
  weightChangeRule : (r : ℝ) → (w : ℝ) → ℝ
  weightEvolution : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticity) where
  learningRatePos : H.learningRate > 0
  weightChangeRuleContinuous : Continuous (fun (r : ℝ × ℝ) => H.weightChangeRule r.1 r.2)
  weightEvolutionSatisfied : H.weightEvolution

def HebbianPlasticityClosed (H : HebbianPlasticity) : Prop :=
  H.learningRate > 0 ∧
  Continuous (fun (r : ℝ × ℝ) => H.weightChangeRule r.1 r.2) ∧
  H.weightEvolution

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticity) (E : HebbianPlasticityEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.learningRatePos (And.intro E.weightChangeRuleContinuous E.weightEvolutionSatisfied)

structure HebbianAdmissibleClass where
  object : HebbianPlasticity
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : HebbianAdmissibleClass) : Prop :=
  HebbianPlasticityClosed A.object

theorem bridge_from_admissible_class (A : HebbianAdmissibleClass) :
    bridgeClosed A := by
  exact ?_

def gateClosed (A : HebbianAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : HebbianAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedHebbianClosure (A : HebbianAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hebbian_endgame (A : HebbianAdmissibleClass) :
    ConstrainedHebbianClosure A := by
  refine And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse

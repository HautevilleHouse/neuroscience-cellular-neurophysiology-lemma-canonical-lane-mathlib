import HautevilleHouse.NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean.SynapticIntegration

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

/-! Action potential propagation along the axon. -/

structure ActionPotentialPropagationPackage where
  membranePotential : ℝ → ℝ
  sodiumConductance : ℝ → ℝ
  potassiumConductance : ℝ → ℝ
  distance : ℝ
  time : ℝ
  propagationLaw : Prop
  propagationLawTerm : propagationLaw

structure ActionPotentialPropagationEvidence (P : ActionPotentialPropagationPackage) where
  propagationLawClosed : P.propagationLaw

def ActionPotentialPropagationClosed (P : ActionPotentialPropagationPackage) : Prop :=
  P.propagationLaw

theorem action_potential_propagation_closed_from_evidence
    (P : ActionPotentialPropagationPackage)
    (E : ActionPotentialPropagationEvidence P) : ActionPotentialPropagationClosed P :=
  E.propagationLawClosed

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse

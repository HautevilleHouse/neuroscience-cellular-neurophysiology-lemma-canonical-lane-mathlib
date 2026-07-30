import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure NoncollapsingPackage where
  thresholdStability : Prop
  firingRateRegularity : Prop
  populationActivityBound : Prop

structure NoncollapsingEvidence (N : NoncollapsingPackage) where
  thresholdStabilityClosed : N.thresholdStability
  firingRateRegularityClosed : N.firingRateRegularity
  populationActivityBoundClosed : N.populationActivityBound

def NoncollapsingClosed (N : NoncollapsingPackage) : Prop :=
  N.thresholdStability ∧ N.firingRateRegularity ∧ N.populationActivityBound

theorem noncollapsing_closed_from_evidence (N : NoncollapsingPackage) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.thresholdStabilityClosed
    (And.intro E.firingRateRegularityClosed E.populationActivityBoundClosed)

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse
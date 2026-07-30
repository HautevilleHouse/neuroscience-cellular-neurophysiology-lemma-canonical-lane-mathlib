import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure HodgkinHuxleyModel where
  membraneCapacitance : ℝ
  maxConductances : ℝ × ℝ × ℝ
  reversalPotentials : ℝ × ℝ × ℝ
  gatingVariables : String
  equationsClosed : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyModel) where
  membraneCapacitanceNonzero : H.membraneCapacitance ≠ 0
  maxConductancesPositive : H.maxConductances.1 > 0 ∧ H.maxConductances.2.1 > 0 ∧ H.maxConductances.2.2 > 0
  equationsClosedTerm : H.equationsClosed

def HodgkinHuxleyClosed (H : HodgkinHuxleyModel) : Prop :=
  H.equationsClosed ∧ (H.maxConductances.1 > 0) ∧ (H.maxConductances.2.1 > 0) ∧ (H.maxConductances.2.2 > 0) ∧ (H.membraneCapacitance ≠ 0)

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyModel) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  refine And.intro E.equationsClosedTerm ?_
  exact And.intro E.maxConductancesPositive.1
    (And.intro E.maxConductancesPositive.2.1
      (And.intro E.maxConductancesPositive.2.2 E.membraneCapacitanceNonzero))

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse

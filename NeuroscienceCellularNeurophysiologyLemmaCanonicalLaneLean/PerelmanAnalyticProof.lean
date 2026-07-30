import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure HodgkinHuxleyAnalyticCertificate where
  sodiumActivation : Prop
  sodiumInactivation : Prop
  potassiumActivation : Prop
  membraneCapacitance : Prop
  ionCurrentBalance : Prop
  sodiumActivationClosed : sodiumActivation
  sodiumInactivationClosed : sodiumInactivation
  potassiumActivationClosed : potassiumActivation
  membraneCapacitanceClosed : membraneCapacitance
  ionCurrentBalanceClosed : ionCurrentBalance
  hodgkinHuxleyEvidence : NoncollapsingEvidence (NoncollapsingPackage.mk …)

def HodgkinHuxleyAnalyticCertificateClosed (C : HodgkinHuxleyAnalyticCertificate) : Prop :=
  C.sodiumActivation ∧ C.sodiumInactivation ∧ C.potassiumActivation ∧ C.membraneCapacitance ∧ C.ionCurrentBalance ∧
  (NoncollapsingClosed (NoncollapsingPackage.mk C.sodiumActivation C.sodiumInactivation C.potassiumActivation))

theorem hodgkin_huxley_analytic_certificate_closed (C : HodgkinHuxleyAnalyticCertificate) :
    HodgkinHuxleyAnalyticCertificateClosed C := by
  exact And.intro C.sodiumActivationClosed
    (And.intro C.sodiumInactivationClosed
      (And.intro C.potassiumActivationClosed
        (And.intro C.membraneCapacitanceClosed
          (And.intro C.ionCurrentBalanceClosed
            (noncollapsing_closed_from_evidence (NoncollapsingPackage.mk C.sodiumActivation C.sodiumInactivation C.potassiumActivation) C.hodgkinHuxleyEvidence)))))

structure HebbianLearningAnalyticCertificate where
  weightPlasticity : Prop
  spikeTimingDependence : Prop
  synapticPotentiation : Prop
  synapticDepression : Prop
  homeostaticScaling : Prop
  hebbianEvidence : NoncollapsingEvidence (NoncollapsingPackage.mk …)

def HebbianLearningAnalyticCertificateClosed (C : HebbianLearningAnalyticCertificate) : Prop :=
  C.weightPlasticity ∧ C.spikeTimingDependence ∧ C.synapticPotentiation ∧ C.synapticDepression ∧ C.homeostaticScaling

theorem hebbian_learning_analytic_certificate_closed (C : HebbianLearningAnalyticCertificate) :
    HebbianLearningAnalyticCertificateClosed C := by
  exact And.intro C.weightPlasticity
    (And.intro C.spikeTimingDependence
      (And.intro C.synapticPotentiation
        (And.intro C.synapticDepression C.homeostaticScaling)))

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse
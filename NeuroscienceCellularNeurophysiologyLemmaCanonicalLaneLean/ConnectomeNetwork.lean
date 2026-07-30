import canonicalLaneMathlib.AdmissibleClass

/-!
# Connectome Network Package
-/

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure ConnectomeNetworkPackage where
  neuronGraph : Type
  synapticConnectivity : Type
  adjacencyMatrix : Type
  smallWorldProperty : Prop
  modularStructure : Prop
  informationRouting : Prop

structure ConnectomeNetworkEvidence (C : ConnectomeNetworkPackage) where
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure
  informationRoutingClosed : C.informationRouting

def ConnectomeNetworkClosed (C : ConnectomeNetworkPackage) : Prop :=
  C.smallWorldProperty ∧ C.modularStructure ∧ C.informationRouting

theorem connectome_network_closed_from_evidence
    (C : ConnectomeNetworkPackage) (E : ConnectomeNetworkEvidence C) :
    ConnectomeNetworkClosed C := by
  exact And.intro E.smallWorldPropertyClosed (And.intro E.modularStructureClosed E.informationRoutingClosed)

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse
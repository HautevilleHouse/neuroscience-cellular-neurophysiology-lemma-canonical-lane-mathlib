import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean

structure StructuralConnectome where
  nodeCount : ℕ
  adjacencyMatrix : List (List ℕ)
  edgeWeights : List (List ℝ)
  connectivityClosed : Prop

structure ConnectomeEvidence (C : StructuralConnectome) where
  adjacencyMatrixSquare : ∀ l ∈ C.adjacencyMatrix, l.length = C.nodeCount
  symmetricEdges : ∀ i j, C.edgeWeights[i]![j]! = C.edgeWeights[j]![i]!
  connectivityClosedTerm : C.connectivityClosed

def ConnectivityClosed (C : StructuralConnectome) : Prop :=
  C.connectivityClosed ∧ (∀ l ∈ C.adjacencyMatrix, l.length = C.nodeCount) ∧ (∀ i j, C.edgeWeights[i]![j]! = C.edgeWeights[j]![i]!)

theorem connectivity_closed_from_evidence (C : StructuralConnectome) (E : ConnectomeEvidence C) :
    ConnectivityClosed C := by
  exact And.intro E.connectivityClosedTerm (And.intro E.adjacencyMatrixSquare E.symmetricEdges)

end NeuroscienceCellularNeurophysiologyLemmaCanonicalLaneLean
end HautevilleHouse

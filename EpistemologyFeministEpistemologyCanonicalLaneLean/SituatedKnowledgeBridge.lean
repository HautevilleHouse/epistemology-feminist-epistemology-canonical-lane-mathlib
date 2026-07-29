import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

structure SituatedKnowledgePackage (A : AdmissibleClass) where
  partialPerspective : Prop
  localKnowledge : Prop
  contextDependence : Prop
  revisionPossible : Prop

structure SituatedKnowledgeEvidence (A : AdmissibleClass) (S : SituatedKnowledgePackage A) where
  partialPerspectiveClosed : S.partialPerspective
  localKnowledgeClosed : S.localKnowledge
  contextDependenceClosed : S.contextDependence
  revisionPossibleClosed : S.revisionPossible

def SituatedKnowledgeClosed (A : AdmissibleClass) (S : SituatedKnowledgePackage A) : Prop :=
  S.partialPerspective ∧ S.localKnowledge ∧ S.contextDependence ∧ S.revisionPossible

theorem situated_knowledge_closed_from_evidence (A : AdmissibleClass) (S : SituatedKnowledgePackage A) (E : SituatedKnowledgeEvidence A S) :
    SituatedKnowledgeClosed A S := by
  exact And.intro E.partialPerspectiveClosed
    (And.intro E.localKnowledgeClosed
      (And.intro E.contextDependenceClosed E.revisionPossibleClosed))

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse
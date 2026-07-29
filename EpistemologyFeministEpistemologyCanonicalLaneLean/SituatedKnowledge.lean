import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

structure SituatedKnowledgePackage where
  knowerPositionality : Prop
  perspectivePartiality : Prop
  objectivityFromPartiality : Prop
  contextDependentTruth : Prop

structure SituatedKnowledgeEvidence (S : SituatedKnowledgePackage) where
  knowerPositionalityClosed : S.knowerPositionality
  perspectivePartialityClosed : S.perspectivePartiality
  objectivityFromPartialityClosed : S.objectivityFromPartiality
  contextDependentTruthClosed : S.contextDependentTruth

def SituatedKnowledgeClosed (S : SituatedKnowledgePackage) : Prop :=
  S.knowerPositionality ∧ S.perspectivePartiality ∧
  S.objectivityFromPartiality ∧ S.contextDependentTruth

theorem situated_knowledge_closed_from_evidence (S : SituatedKnowledgePackage)
    (E : SituatedKnowledgeEvidence S) : SituatedKnowledgeClosed S := by
  exact And.intro E.knowerPositionalityClosed
    (And.intro E.perspectivePartialityClosed
      (And.intro E.objectivityFromPartialityClosed E.contextDependentTruthClosed))

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse
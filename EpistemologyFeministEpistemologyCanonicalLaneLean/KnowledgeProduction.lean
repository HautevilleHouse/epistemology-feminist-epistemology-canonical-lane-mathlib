import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

structure KnowledgeProductionPackage where
  communityBasedKnowledge : Prop
  marginalVoices : Prop
  epistemicDiversity : Prop
  knowledgeAsSituatedPractice : Prop

structure KnowledgeProductionEvidence (K : KnowledgeProductionPackage) where
  communityBasedKnowledgeClosed : K.communityBasedKnowledge
  marginalVoicesClosed : K.marginalVoices
  epistemicDiversityClosed : K.epistemicDiversity
  knowledgeAsSituatedPracticeClosed : K.knowledgeAsSituatedPractice

def KnowledgeProductionClosed (K : KnowledgeProductionPackage) : Prop :=
  K.communityBasedKnowledge ∧ K.marginalVoices ∧ K.epistemicDiversity ∧ K.knowledgeAsSituatedPractice

theorem knowledge_production_closed_from_evidence (K : KnowledgeProductionPackage) (E : KnowledgeProductionEvidence K) : KnowledgeProductionClosed K := by
  exact And.intro E.communityBasedKnowledgeClosed (And.intro E.marginalVoicesClosed (And.intro E.epistemicDiversityClosed E.knowledgeAsSituatedPracticeClosed))

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse
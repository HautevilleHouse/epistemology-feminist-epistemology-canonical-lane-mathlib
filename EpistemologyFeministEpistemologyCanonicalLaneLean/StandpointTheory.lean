import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

structure StandpointTheoryPackage where
  socialLocationEpistemicPrivilege : Prop
  situatedKnowledgeProduction : Prop
  powerAwareness : Prop
  marginalStandpointBenefit : Prop

structure StandpointTheoryEvidence (S : StandpointTheoryPackage) where
  socialLocationEpistemicPrivilegeClosed : S.socialLocationEpistemicPrivilege
  situatedKnowledgeProductionClosed : S.situatedKnowledgeProduction
  powerAwarenessClosed : S.powerAwareness
  marginalStandpointBenefitClosed : S.marginalStandpointBenefit

def StandpointTheoryClosed (S : StandpointTheoryPackage) : Prop :=
  S.socialLocationEpistemicPrivilege ∧ S.situatedKnowledgeProduction ∧
  S.powerAwareness ∧ S.marginalStandpointBenefit

theorem standpoint_theory_closed_from_evidence (S : StandpointTheoryPackage)
    (E : StandpointTheoryEvidence S) : StandpointTheoryClosed S := by
  exact And.intro E.socialLocationEpistemicPrivilegeClosed
    (And.intro E.situatedKnowledgeProductionClosed
      (And.intro E.powerAwarenessClosed E.marginalStandpointBenefitClosed))

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse
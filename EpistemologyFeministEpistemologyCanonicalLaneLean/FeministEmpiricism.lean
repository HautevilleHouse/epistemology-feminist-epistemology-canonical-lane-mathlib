import EpistemologyFeministEpistemologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

structure FeministEmpiricismPackage (A : AdmissibleClass) where
  experienceBasedKnowledge : Prop
  communityStandards : Prop
  valueLadenInquiry : Prop
  democraticKnowledgeProduction : Prop

structure FeministEmpiricismEvidence (A : AdmissibleClass) (FE : FeministEmpiricismPackage A) where
  experienceBasedKnowledgeClosed : FE.experienceBasedKnowledge
  communityStandardsClosed : FE.communityStandards
  valueLadenInquiryClosed : FE.valueLadenInquiry
  democraticKnowledgeProductionClosed : FE.democraticKnowledgeProduction

def FeministEmpiricismClosed (A : AdmissibleClass) (FE : FeministEmpiricismPackage A) : Prop :=
  FE.experienceBasedKnowledge ∧ FE.communityStandards ∧ FE.valueLadenInquiry ∧ FE.democraticKnowledgeProduction

theorem feminist_empiricism_closed_from_evidence (A : AdmissibleClass) (FE : FeministEmpiricismPackage A) (E : FeministEmpiricismEvidence A FE) :
    FeministEmpiricismClosed A FE := by
  exact And.intro E.experienceBasedKnowledgeClosed (And.intro E.communityStandardsClosed (And.intro E.valueLadenInquiryClosed E.democraticKnowledgeProductionClosed))

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

structure StandpointTheoryPackage (A : AdmissibleClass) where
  socialLocationMatters : Prop
  epistemicAdvantage : Prop
  strongObjectivity : Prop
  politicalCommitment : Prop

structure StandpointTheoryEvidence (A : AdmissibleClass) (S : StandpointTheoryPackage A) where
  socialLocationMattersClosed : S.socialLocationMatters
  epistemicAdvantageClosed : S.epistemicAdvantage
  strongObjectivityClosed : S.strongObjectivity
  politicalCommitmentClosed : S.politicalCommitment

def StandpointTheoryClosed (A : AdmissibleClass) (S : StandpointTheoryPackage A) : Prop :=
  S.socialLocationMatters ∧ S.epistemicAdvantage ∧ S.strongObjectivity ∧ S.politicalCommitment

theorem standpoint_theory_closed_from_evidence (A : AdmissibleClass) (S : StandpointTheoryPackage A) (E : StandpointTheoryEvidence A S) :
    StandpointTheoryClosed A S := by
  exact And.intro E.socialLocationMattersClosed
    (And.intro E.epistemicAdvantageClosed
      (And.intro E.strongObjectivityClosed E.politicalCommitmentClosed))

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse
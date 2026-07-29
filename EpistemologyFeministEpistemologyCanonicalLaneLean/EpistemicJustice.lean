import canonicalLaneMathlib.AdmissibleClass
import EpistemologyFeministEpistemologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

structure EpistemicJusticePackage where
  testimonialJustice : Prop
  hermeneuticalJustice : Prop
  participationEquity : Prop
  epistemicPowerAwareness : Prop

structure EpistemicJusticeEvidence (J : EpistemicJusticePackage) where
  testimonialJusticeClosed : J.testimonialJustice
  hermeneuticalJusticeClosed : J.hermeneuticalJustice
  participationEquityClosed : J.participationEquity
  epistemicPowerAwarenessClosed : J.epistemicPowerAwareness

def EpistemicJusticeClosed (J : EpistemicJusticePackage) : Prop :=
  J.testimonialJustice ∧ J.hermeneuticalJustice ∧ J.participationEquity ∧ J.epistemicPowerAwareness

theorem epistemic_justice_closed_from_evidence
    (J : EpistemicJusticePackage) (E : EpistemicJusticeEvidence J) :
    EpistemicJusticeClosed J := by
  exact And.intro E.testimonialJusticeClosed
    (And.intro E.hermeneuticalJusticeClosed
      (And.intro E.participationEquityClosed E.epistemicPowerAwarenessClosed))

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse

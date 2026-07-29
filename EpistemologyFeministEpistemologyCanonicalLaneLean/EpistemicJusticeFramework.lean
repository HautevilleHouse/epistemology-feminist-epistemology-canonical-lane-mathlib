import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

structure EpistemicJusticePackage (A : AdmissibleClass) where
  testimonialJustice : Prop
  hermeneuticalJustice : Prop
  equalEpistemicParticipation : Prop
  structuralRemedies : Prop

structure EpistemicJusticeEvidence (A : AdmissibleClass) (E : EpistemicJusticePackage A) where
  testimonialJusticeClosed : E.testimonialJustice
  hermeneuticalJusticeClosed : E.hermeneuticalJustice
  equalEpistemicParticipationClosed : E.equalEpistemicParticipation
  structuralRemediesClosed : E.structuralRemedies

def EpistemicJusticeClosed (A : AdmissibleClass) (E : EpistemicJusticePackage A) : Prop :=
  E.testimonialJustice ∧ E.hermeneuticalJustice ∧ E.equalEpistemicParticipation ∧ E.structuralRemedies

theorem epistemic_justice_closed_from_evidence (A : AdmissibleClass) (E : EpistemicJusticePackage A) (Ev : EpistemicJusticeEvidence A E) :
    EpistemicJusticeClosed A E := by
  exact And.intro Ev.testimonialJusticeClosed
    (And.intro Ev.hermeneuticalJusticeClosed
      (And.intro Ev.equalEpistemicParticipationClosed Ev.structuralRemediesClosed))

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse
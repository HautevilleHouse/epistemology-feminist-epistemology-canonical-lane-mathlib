import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

structure TestimonialInjusticePackage (A : AdmissibleClass) where
  credibilityDeficit : Prop
  identityPrejudice : Prop
  systematicExclusion : Prop
  epistemicHarm : Prop

structure TestimonialInjusticeEvidence (A : AdmissibleClass) (T : TestimonialInjusticePackage A) where
  credibilityDeficitClosed : T.credibilityDeficit
  identityPrejudiceClosed : T.identityPrejudice
  systematicExclusionClosed : T.systematicExclusion
  epistemicHarmClosed : T.epistemicHarm

def TestimonialInjusticeClosed (A : AdmissibleClass) (T : TestimonialInjusticePackage A) : Prop :=
  T.credibilityDeficit ∧ T.identityPrejudice ∧ T.systematicExclusion ∧ T.epistemicHarm

theorem testimonial_injustice_closed_from_evidence (A : AdmissibleClass) (T : TestimonialInjusticePackage A) (E : TestimonialInjusticeEvidence A T) :
    TestimonialInjusticeClosed A T := by
  exact And.intro E.credibilityDeficitClosed
    (And.intro E.identityPrejudiceClosed
      (And.intro E.systematicExclusionClosed E.epistemicHarmClosed))

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse
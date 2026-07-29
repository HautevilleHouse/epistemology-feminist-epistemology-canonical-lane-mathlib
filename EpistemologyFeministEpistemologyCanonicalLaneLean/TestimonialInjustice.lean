import canonicalLaneMathlib.AdmissibleClass
import EpistemologyFeministEpistemologyCanonicalLaneLean.EpistemicJustice

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

structure TestimonialInjusticePackage where
  credibilityDeficit : Prop
  identityPrejudice : Prop
  silencingEffect : Prop
  correctiveMeasure : Prop

structure TestimonialInjusticeEvidence (I : TestimonialInjusticePackage) where
  credibilityDeficitClosed : I.credibilityDeficit
  identityPrejudiceClosed : I.identityPrejudice
  silencingEffectClosed : I.silencingEffect
  correctiveMeasureClosed : I.correctiveMeasure

def TestimonialInjusticeClosed (I : TestimonialInjusticePackage) : Prop :=
  I.credibilityDeficit ∧ I.identityPrejudice ∧ I.silencingEffect ∧ I.correctiveMeasure

theorem testimonial_injustice_closed_from_evidence
    (I : TestimonialInjusticePackage) (E : TestimonialInjusticeEvidence I) :
    TestimonialInjusticeClosed I := by
  exact And.intro E.credibilityDeficitClosed
    (And.intro E.identityPrejudiceClosed
      (And.intro E.silencingEffectClosed E.correctiveMeasureClosed))

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse

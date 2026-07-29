import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

structure EpistemicInjusticePackage where
  testimonialInjustice : Prop
  hermeneuticalInjustice : Prop
  identityPowerDistortion : Prop
  credibleDeficit : Prop

structure EpistemicInjusticeEvidence (E : EpistemicInjusticePackage) where
  testimonialInjusticeClosed : E.testimonialInjustice
  hermeneuticalInjusticeClosed : E.hermeneuticalInjustice
  identityPowerDistortionClosed : E.identityPowerDistortion
  credibleDeficitClosed : E.credibleDeficit

def EpistemicInjusticeClosed (E : EpistemicInjusticePackage) : Prop :=
  E.testimonialInjustice ∧ E.hermeneuticalInjustice ∧
  E.identityPowerDistortion ∧ E.credibleDeficit

theorem epistemic_injustice_closed_from_evidence (E : EpistemicInjusticePackage)
    (Ev : EpistemicInjusticeEvidence E) : EpistemicInjusticeClosed E := by
  exact And.intro Ev.testimonialInjusticeClosed
    (And.intro Ev.hermeneuticalInjusticeClosed
      (And.intro Ev.identityPowerDistortionClosed Ev.credibleDeficitClosed))

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse
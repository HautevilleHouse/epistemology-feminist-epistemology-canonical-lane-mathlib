import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

structure HermeneuticalInjusticePackage (A : AdmissibleClass) where
  structuralPrejudice : Prop
  conceptualGap : Prop
  communicativeMisfire : Prop
  epistemicMarginalization : Prop

structure HermeneuticalInjusticeEvidence (A : AdmissibleClass) (H : HermeneuticalInjusticePackage A) where
  structuralPrejudiceClosed : H.structuralPrejudice
  conceptualGapClosed : H.conceptualGap
  communicativeMisfireClosed : H.communicativeMisfire
  epistemicMarginalizationClosed : H.epistemicMarginalization

def HermeneuticalInjusticeClosed (A : AdmissibleClass) (H : HermeneuticalInjusticePackage A) : Prop :=
  H.structuralPrejudice ∧ H.conceptualGap ∧ H.communicativeMisfire ∧ H.epistemicMarginalization

theorem hermeneutical_injustice_closed_from_evidence (A : AdmissibleClass) (H : HermeneuticalInjusticePackage A) (E : HermeneuticalInjusticeEvidence A H) :
    HermeneuticalInjusticeClosed A H := by
  exact And.intro E.structuralPrejudiceClosed
    (And.intro E.conceptualGapClosed
      (And.intro E.communicativeMisfireClosed E.epistemicMarginalizationClosed))

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse
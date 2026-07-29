import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

structure FeministEmpiricismPackage (A : AdmissibleClass) where
  empiricalAdequacy : Prop
  valueLadenness : Prop
  contextualEmpiricism : Prop
  socialEpistemology : Prop

structure FeministEmpiricismEvidence (A : AdmissibleClass) (F : FeministEmpiricismPackage A) where
  empiricalAdequacyClosed : F.empiricalAdequacy
  valueLadennessClosed : F.valueLadenness
  contextualEmpiricismClosed : F.contextualEmpiricism
  socialEpistemologyClosed : F.socialEpistemology

def FeministEmpiricismClosed (A : AdmissibleClass) (F : FeministEmpiricismPackage A) : Prop :=
  F.empiricalAdequacy ∧ F.valueLadenness ∧ F.contextualEmpiricism ∧ F.socialEpistemology

theorem feminist_empiricism_closed_from_evidence (A : AdmissibleClass) (F : FeministEmpiricismPackage A) (E : FeministEmpiricismEvidence A F) :
    FeministEmpiricismClosed A F := by
  exact And.intro E.empiricalAdequacyClosed
    (And.intro E.valueLadennessClosed
      (And.intro E.contextualEmpiricismClosed E.socialEpistemologyClosed))

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse
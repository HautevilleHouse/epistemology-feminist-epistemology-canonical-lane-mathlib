import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EpistemologyFeministEpistemologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FeministEpistemicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse
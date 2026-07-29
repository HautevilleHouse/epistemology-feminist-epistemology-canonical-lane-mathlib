import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EpistemologyFeministEpistemologyCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.EpistemologyFeministEpistemologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

def ConstrainedFeministEpistemicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_feminist_epistemic_endgame (A : AdmissibleClass) :
    ConstrainedFeministEpistemicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse
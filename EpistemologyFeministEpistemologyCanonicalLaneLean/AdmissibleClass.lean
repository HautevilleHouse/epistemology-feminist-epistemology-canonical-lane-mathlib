import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EpistemicAgent where
  carrier : Type
  identity : Type
  socialLocation : carrier → Type

structure AdmittedEpistemicObject where
  agent : EpistemicAgent
  standpoint : Prop
  situatedKnowledge : Prop
  conclusion : standpoint ∧ situatedKnowledge

structure FeministEpistemicEndgameState where
  object : AdmittedEpistemicObject

def FeministEpistemicWitnessClosed (O : AdmittedEpistemicObject) : Prop :=
  O.standpoint ∧ O.situatedKnowledge

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse
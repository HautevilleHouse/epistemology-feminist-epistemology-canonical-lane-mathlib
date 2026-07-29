import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyFeministEpistemologyCanonicalLaneLean

structure FeministEpistemicContext where
  carrier : Type
  epistemicTopology : TopologicalSpace carrier

structure FeministEpistemicAdmittedObject where
  context : FeministEpistemicContext
  situatedKnowledge : Prop
  standpointPrivilege : Prop
  epistemicJusticeCriteria : Prop
  conclusion : Prop

def FeministEpistemicWitnessClosed (O : FeministEpistemicAdmittedObject) : Prop :=
  O.conclusion

end EpistemologyFeministEpistemologyCanonicalLaneLean
end HautevilleHouse
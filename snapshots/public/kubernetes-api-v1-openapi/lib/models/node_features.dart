// GENERATED CODE - DO NOT MODIFY BY HAND

/// NodeFeatures describes the set of features implemented by the CRI implementation. The features contained in the NodeFeatures should depend only on the cri implementation independent of runtime handlers.
final class NodeFeatures {const NodeFeatures({this.supplementalGroupsPolicy});

factory NodeFeatures.fromJson(Map<String, dynamic> json) { return NodeFeatures(
  supplementalGroupsPolicy: json['supplementalGroupsPolicy'] as bool?,
); }

/// SupplementalGroupsPolicy is set to true if the runtime supports SupplementalGroupsPolicy and ContainerUser.
final bool? supplementalGroupsPolicy;

Map<String, dynamic> toJson() { return {
  'supplementalGroupsPolicy': ?supplementalGroupsPolicy,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'supplementalGroupsPolicy'}.contains(key)); } 
NodeFeatures copyWith({bool Function()? supplementalGroupsPolicy}) { return NodeFeatures(
  supplementalGroupsPolicy: supplementalGroupsPolicy != null ? supplementalGroupsPolicy() : this.supplementalGroupsPolicy,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NodeFeatures &&
          supplementalGroupsPolicy == other.supplementalGroupsPolicy; } 
@override int get hashCode { return supplementalGroupsPolicy.hashCode; } 
@override String toString() { return 'NodeFeatures(supplementalGroupsPolicy: $supplementalGroupsPolicy)'; } 
 }

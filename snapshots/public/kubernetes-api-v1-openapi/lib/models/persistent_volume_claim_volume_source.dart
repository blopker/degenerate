// GENERATED CODE - DO NOT MODIFY BY HAND

/// PersistentVolumeClaimVolumeSource references the user's PVC in the same namespace. This volume finds the bound PV and mounts that volume for the pod. A PersistentVolumeClaimVolumeSource is, essentially, a wrapper around another type of volume that is owned by someone else (the system).
final class PersistentVolumeClaimVolumeSource {const PersistentVolumeClaimVolumeSource({this.claimName = '', this.readOnly, });

factory PersistentVolumeClaimVolumeSource.fromJson(Map<String, dynamic> json) { return PersistentVolumeClaimVolumeSource(
  claimName: json['claimName'] as String,
  readOnly: json['readOnly'] as bool?,
); }

/// claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
final String claimName;

/// readOnly Will force the ReadOnly setting in VolumeMounts. Default false.
final bool? readOnly;

Map<String, dynamic> toJson() { return {
  'claimName': claimName,
  'readOnly': ?readOnly,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('claimName') && json['claimName'] is String; } 
PersistentVolumeClaimVolumeSource copyWith({String? claimName, bool Function()? readOnly, }) { return PersistentVolumeClaimVolumeSource(
  claimName: claimName ?? this.claimName,
  readOnly: readOnly != null ? readOnly() : this.readOnly,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PersistentVolumeClaimVolumeSource &&
          claimName == other.claimName &&
          readOnly == other.readOnly; } 
@override int get hashCode { return Object.hash(claimName, readOnly); } 
@override String toString() { return 'PersistentVolumeClaimVolumeSource(claimName: $claimName, readOnly: $readOnly)'; } 
 }

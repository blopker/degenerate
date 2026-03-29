// GENERATED CODE - DO NOT MODIFY BY HAND

import 'volume_status.dart';/// VolumeMountStatus shows status of volume mounts.
final class VolumeMountStatus {const VolumeMountStatus({this.mountPath = '', this.name = '', this.readOnly, this.recursiveReadOnly, this.volumeStatus, });

factory VolumeMountStatus.fromJson(Map<String, dynamic> json) { return VolumeMountStatus(
  mountPath: json['mountPath'] as String,
  name: json['name'] as String,
  readOnly: json['readOnly'] as bool?,
  recursiveReadOnly: json['recursiveReadOnly'] as String?,
  volumeStatus: json['volumeStatus'] != null ? VolumeStatus.fromJson(json['volumeStatus'] as Map<String, dynamic>) : null,
); }

/// MountPath corresponds to the original VolumeMount.
final String mountPath;

/// Name corresponds to the name of the original VolumeMount.
final String name;

/// ReadOnly corresponds to the original VolumeMount.
final bool? readOnly;

/// RecursiveReadOnly must be set to Disabled, Enabled, or unspecified (for non-readonly mounts). An IfPossible value in the original VolumeMount must be translated to Disabled or Enabled, depending on the mount result.
final String? recursiveReadOnly;

/// volumeStatus represents volume-type-specific status about the mounted volume.
final VolumeStatus? volumeStatus;

Map<String, dynamic> toJson() { return {
  'mountPath': mountPath,
  'name': name,
  'readOnly': ?readOnly,
  'recursiveReadOnly': ?recursiveReadOnly,
  if (volumeStatus != null) 'volumeStatus': volumeStatus?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mountPath') && json['mountPath'] is String &&
      json.containsKey('name') && json['name'] is String; } 
VolumeMountStatus copyWith({String? mountPath, String? name, bool Function()? readOnly, String Function()? recursiveReadOnly, VolumeStatus Function()? volumeStatus, }) { return VolumeMountStatus(
  mountPath: mountPath ?? this.mountPath,
  name: name ?? this.name,
  readOnly: readOnly != null ? readOnly() : this.readOnly,
  recursiveReadOnly: recursiveReadOnly != null ? recursiveReadOnly() : this.recursiveReadOnly,
  volumeStatus: volumeStatus != null ? volumeStatus() : this.volumeStatus,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VolumeMountStatus &&
          mountPath == other.mountPath &&
          name == other.name &&
          readOnly == other.readOnly &&
          recursiveReadOnly == other.recursiveReadOnly &&
          volumeStatus == other.volumeStatus; } 
@override int get hashCode { return Object.hash(mountPath, name, readOnly, recursiveReadOnly, volumeStatus); } 
@override String toString() { return 'VolumeMountStatus(mountPath: $mountPath, name: $name, readOnly: $readOnly, recursiveReadOnly: $recursiveReadOnly, volumeStatus: $volumeStatus)'; } 
 }

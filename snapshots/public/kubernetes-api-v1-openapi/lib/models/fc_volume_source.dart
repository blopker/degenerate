// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as read/write once. Fibre Channel volumes support ownership management and SELinux relabeling.
final class FcVolumeSource {const FcVolumeSource({this.fsType, this.lun, this.readOnly, this.targetWwNs, this.wwids, });

factory FcVolumeSource.fromJson(Map<String, dynamic> json) { return FcVolumeSource(
  fsType: json['fsType'] as String?,
  lun: json['lun'] != null ? (json['lun'] as num).toInt() : null,
  readOnly: json['readOnly'] as bool?,
  targetWwNs: (json['targetWWNs'] as List<dynamic>?)?.map((e) => e as String).toList(),
  wwids: (json['wwids'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
final String? fsType;

/// lun is Optional: FC target lun number
final int? lun;

/// readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
final bool? readOnly;

/// targetWWNs is Optional: FC target worldwide names (WWNs)
final List<String>? targetWwNs;

/// wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of targetWWNs and lun must be set, but not both simultaneously.
final List<String>? wwids;

Map<String, dynamic> toJson() { return {
  'fsType': ?fsType,
  'lun': ?lun,
  'readOnly': ?readOnly,
  'targetWWNs': ?targetWwNs,
  'wwids': ?wwids,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
FcVolumeSource copyWith({String Function()? fsType, int Function()? lun, bool Function()? readOnly, List<String> Function()? targetWwNs, List<String> Function()? wwids, }) { return FcVolumeSource(
  fsType: fsType != null ? fsType() : this.fsType,
  lun: lun != null ? lun() : this.lun,
  readOnly: readOnly != null ? readOnly() : this.readOnly,
  targetWwNs: targetWwNs != null ? targetWwNs() : this.targetWwNs,
  wwids: wwids != null ? wwids() : this.wwids,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FcVolumeSource &&
          fsType == other.fsType &&
          lun == other.lun &&
          readOnly == other.readOnly &&
          listEquals(targetWwNs, other.targetWwNs) &&
          listEquals(wwids, other.wwids); } 
@override int get hashCode { return Object.hash(fsType, lun, readOnly, Object.hashAll(targetWwNs ?? const []), Object.hashAll(wwids ?? const [])); } 
@override String toString() { return 'FcVolumeSource(fsType: $fsType, lun: $lun, readOnly: $readOnly, targetWwNs: $targetWwNs, wwids: $wwids)'; } 
 }

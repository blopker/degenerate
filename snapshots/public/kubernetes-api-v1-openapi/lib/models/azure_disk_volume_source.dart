// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
@immutable final class AzureDiskVolumeSource {const AzureDiskVolumeSource({required this.diskName, required this.diskUri, this.cachingMode, this.fsType, this.kind, this.readOnly, });

factory AzureDiskVolumeSource.fromJson(Map<String, dynamic> json) {return AzureDiskVolumeSource(
  cachingMode: json['cachingMode'] as String?,
  diskName: json['diskName'] as String,
  diskUri: json['diskURI'] as String,
  fsType: json['fsType'] as String?,
  kind: json['kind'] as String?,
  readOnly: json['readOnly'] as bool?,
);}

/// cachingMode is the Host Caching mode: None, Read Only, Read Write.
final String? cachingMode;

/// diskName is the Name of the data disk in the blob storage
final String diskName;

/// diskURI is the URI of data disk in the blob storage
final String diskUri;

/// fsType is Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
final String? fsType;

/// kind expected values are Shared: multiple blob disks per storage account  Dedicated: single blob disk per storage account  Managed: azure managed data disk (only in managed availability set). defaults to shared
final String? kind;

/// readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
final bool? readOnly;

/// The value with the schema default applied when absent.
String get cachingModeOrDefault {return cachingMode ?? 'ReadWrite';}
/// The value with the schema default applied when absent.
String get fsTypeOrDefault {return fsType ?? 'ext4';}
/// The value with the schema default applied when absent.
String get kindOrDefault {return kind ?? 'Shared';}
/// The value with the schema default applied when absent.
bool get readOnlyOrDefault {return readOnly ?? false;}
Map<String, dynamic> toJson() {return {
  'cachingMode': ?cachingMode,
  'diskName': diskName,
  'diskURI': diskUri,
  'fsType': ?fsType,
  'kind': ?kind,
  'readOnly': ?readOnly,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('diskName') && json['diskName'] is String &&
      json.containsKey('diskURI') && json['diskURI'] is String;}
AzureDiskVolumeSource copyWith({String? Function()? cachingMode, String? diskName, String? diskUri, String? Function()? fsType, String? Function()? kind, bool? Function()? readOnly, }) {return AzureDiskVolumeSource(
  cachingMode: cachingMode != null ? cachingMode() : this.cachingMode,
  diskName: diskName ?? this.diskName,
  diskUri: diskUri ?? this.diskUri,
  fsType: fsType != null ? fsType() : this.fsType,
  kind: kind != null ? kind() : this.kind,
  readOnly: readOnly != null ? readOnly() : this.readOnly,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AzureDiskVolumeSource &&
          cachingMode == other.cachingMode &&
          diskName == other.diskName &&
          diskUri == other.diskUri &&
          fsType == other.fsType &&
          kind == other.kind &&
          readOnly == other.readOnly;}
@override int get hashCode {return Object.hash(cachingMode, diskName, diskUri, fsType, kind, readOnly);}
@override String toString() {return 'AzureDiskVolumeSource(cachingMode: $cachingMode, diskName: $diskName, diskUri: $diskUri, fsType: $fsType, kind: $kind, readOnly: $readOnly)';}
}

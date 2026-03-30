// GENERATED CODE - DO NOT MODIFY BY HAND

import 'object_reference.dart';/// Represents a StorageOS persistent volume resource.
final class StorageOsPersistentVolumeSource {const StorageOsPersistentVolumeSource({this.fsType, this.readOnly, this.secretRef, this.volumeName, this.volumeNamespace, });

factory StorageOsPersistentVolumeSource.fromJson(Map<String, dynamic> json) { return StorageOsPersistentVolumeSource(
  fsType: json['fsType'] as String?,
  readOnly: json['readOnly'] as bool?,
  secretRef: json['secretRef'] != null ? ObjectReference.fromJson(json['secretRef'] as Map<String, dynamic>) : null,
  volumeName: json['volumeName'] as String?,
  volumeNamespace: json['volumeNamespace'] as String?,
); }

/// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
final String? fsType;

/// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
final bool? readOnly;

/// secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not specified, default values will be attempted.
final ObjectReference? secretRef;

/// volumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.
final String? volumeName;

/// volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to "default" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
final String? volumeNamespace;

Map<String, dynamic> toJson() { return {
  'fsType': ?fsType,
  'readOnly': ?readOnly,
  if (secretRef != null) 'secretRef': secretRef?.toJson(),
  'volumeName': ?volumeName,
  'volumeNamespace': ?volumeNamespace,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fsType', 'readOnly', 'secretRef', 'volumeName', 'volumeNamespace'}.contains(key)); } 
StorageOsPersistentVolumeSource copyWith({String Function()? fsType, bool Function()? readOnly, ObjectReference Function()? secretRef, String Function()? volumeName, String Function()? volumeNamespace, }) { return StorageOsPersistentVolumeSource(
  fsType: fsType != null ? fsType() : this.fsType,
  readOnly: readOnly != null ? readOnly() : this.readOnly,
  secretRef: secretRef != null ? secretRef() : this.secretRef,
  volumeName: volumeName != null ? volumeName() : this.volumeName,
  volumeNamespace: volumeNamespace != null ? volumeNamespace() : this.volumeNamespace,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StorageOsPersistentVolumeSource &&
          fsType == other.fsType &&
          readOnly == other.readOnly &&
          secretRef == other.secretRef &&
          volumeName == other.volumeName &&
          volumeNamespace == other.volumeNamespace; } 
@override int get hashCode { return Object.hash(fsType, readOnly, secretRef, volumeName, volumeNamespace); } 
@override String toString() { return 'StorageOsPersistentVolumeSource(fsType: $fsType, readOnly: $readOnly, secretRef: $secretRef, volumeName: $volumeName, volumeNamespace: $volumeNamespace)'; } 
 }

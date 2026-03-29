// GENERATED CODE - DO NOT MODIFY BY HAND

import 'secret_reference.dart';/// FlexPersistentVolumeSource represents a generic persistent volume resource that is provisioned/attached using an exec based plugin.
final class FlexPersistentVolumeSource {const FlexPersistentVolumeSource({this.driver = '', this.fsType, this.options, this.readOnly, this.secretRef, });

factory FlexPersistentVolumeSource.fromJson(Map<String, dynamic> json) { return FlexPersistentVolumeSource(
  driver: json['driver'] as String,
  fsType: json['fsType'] as String?,
  options: (json['options'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  readOnly: json['readOnly'] as bool?,
  secretRef: json['secretRef'] != null ? SecretReference.fromJson(json['secretRef'] as Map<String, dynamic>) : null,
); }

/// driver is the name of the driver to use for this volume.
final String driver;

/// fsType is the Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.
final String? fsType;

/// options is Optional: this field holds extra command options if any.
final Map<String,String>? options;

/// readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
final bool? readOnly;

/// secretRef is Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
final SecretReference? secretRef;

Map<String, dynamic> toJson() { return {
  'driver': driver,
  'fsType': ?fsType,
  'options': ?options,
  'readOnly': ?readOnly,
  if (secretRef != null) 'secretRef': secretRef?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('driver') && json['driver'] is String; } 
FlexPersistentVolumeSource copyWith({String? driver, String Function()? fsType, Map<String, String> Function()? options, bool Function()? readOnly, SecretReference Function()? secretRef, }) { return FlexPersistentVolumeSource(
  driver: driver ?? this.driver,
  fsType: fsType != null ? fsType() : this.fsType,
  options: options != null ? options() : this.options,
  readOnly: readOnly != null ? readOnly() : this.readOnly,
  secretRef: secretRef != null ? secretRef() : this.secretRef,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FlexPersistentVolumeSource &&
          driver == other.driver &&
          fsType == other.fsType &&
          options == other.options &&
          readOnly == other.readOnly &&
          secretRef == other.secretRef; } 
@override int get hashCode { return Object.hash(driver, fsType, options, readOnly, secretRef); } 
@override String toString() { return 'FlexPersistentVolumeSource(driver: $driver, fsType: $fsType, options: $options, readOnly: $readOnly, secretRef: $secretRef)'; } 
 }

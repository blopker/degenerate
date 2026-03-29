// GENERATED CODE - DO NOT MODIFY BY HAND

/// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
final class AzureFileVolumeSource {const AzureFileVolumeSource({this.readOnly, this.secretName = '', this.shareName = '', });

factory AzureFileVolumeSource.fromJson(Map<String, dynamic> json) { return AzureFileVolumeSource(
  readOnly: json['readOnly'] as bool?,
  secretName: json['secretName'] as String,
  shareName: json['shareName'] as String,
); }

/// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
final bool? readOnly;

/// secretName is the  name of secret that contains Azure Storage Account Name and Key
final String secretName;

/// shareName is the azure share Name
final String shareName;

Map<String, dynamic> toJson() { return {
  'readOnly': ?readOnly,
  'secretName': secretName,
  'shareName': shareName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('secretName') && json['secretName'] is String &&
      json.containsKey('shareName') && json['shareName'] is String; } 
AzureFileVolumeSource copyWith({bool Function()? readOnly, String? secretName, String? shareName, }) { return AzureFileVolumeSource(
  readOnly: readOnly != null ? readOnly() : this.readOnly,
  secretName: secretName ?? this.secretName,
  shareName: shareName ?? this.shareName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AzureFileVolumeSource &&
          readOnly == other.readOnly &&
          secretName == other.secretName &&
          shareName == other.shareName; } 
@override int get hashCode { return Object.hash(readOnly, secretName, shareName); } 
@override String toString() { return 'AzureFileVolumeSource(readOnly: $readOnly, secretName: $secretName, shareName: $shareName)'; } 
 }

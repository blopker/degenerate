// GENERATED CODE - DO NOT MODIFY BY HAND

/// Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.
final class FlockerVolumeSource {const FlockerVolumeSource({this.datasetName, this.datasetUuid, });

factory FlockerVolumeSource.fromJson(Map<String, dynamic> json) { return FlockerVolumeSource(
  datasetName: json['datasetName'] as String?,
  datasetUuid: json['datasetUUID'] as String?,
); }

/// datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated
final String? datasetName;

/// datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset
final String? datasetUuid;

Map<String, dynamic> toJson() { return {
  'datasetName': ?datasetName,
  'datasetUUID': ?datasetUuid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'datasetName', 'datasetUUID'}.contains(key)); } 
FlockerVolumeSource copyWith({String Function()? datasetName, String Function()? datasetUuid, }) { return FlockerVolumeSource(
  datasetName: datasetName != null ? datasetName() : this.datasetName,
  datasetUuid: datasetUuid != null ? datasetUuid() : this.datasetUuid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FlockerVolumeSource &&
          datasetName == other.datasetName &&
          datasetUuid == other.datasetUuid; } 
@override int get hashCode { return Object.hash(datasetName, datasetUuid); } 
@override String toString() { return 'FlockerVolumeSource(datasetName: $datasetName, datasetUuid: $datasetUuid)'; } 
 }

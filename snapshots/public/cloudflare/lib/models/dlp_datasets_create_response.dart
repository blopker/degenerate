// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_dataset_creation.dart';final class DlpDatasetsCreateResponse {const DlpDatasetsCreateResponse({this.result});

factory DlpDatasetsCreateResponse.fromJson(Map<String, dynamic> json) { return DlpDatasetsCreateResponse(
  result: json['result'] != null ? DlpDatasetCreation.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpDatasetCreation? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpDatasetsCreateResponse copyWith({DlpDatasetCreation Function()? result}) { return DlpDatasetsCreateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDatasetsCreateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpDatasetsCreateResponse(result: $result)'; } 
 }

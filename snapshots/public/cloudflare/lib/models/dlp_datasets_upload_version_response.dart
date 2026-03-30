// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_dataset.dart';final class DlpDatasetsUploadVersionResponse {const DlpDatasetsUploadVersionResponse({this.result});

factory DlpDatasetsUploadVersionResponse.fromJson(Map<String, dynamic> json) { return DlpDatasetsUploadVersionResponse(
  result: json['result'] != null ? DlpDataset.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpDataset? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpDatasetsUploadVersionResponse copyWith({DlpDataset Function()? result}) { return DlpDatasetsUploadVersionResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDatasetsUploadVersionResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpDatasetsUploadVersionResponse(result: $result)'; } 
 }

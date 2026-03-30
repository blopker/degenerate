// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_dataset_column.dart';final class DlpDatasetsUploadDatasetColumnResponse {const DlpDatasetsUploadDatasetColumnResponse({this.result});

factory DlpDatasetsUploadDatasetColumnResponse.fromJson(Map<String, dynamic> json) { return DlpDatasetsUploadDatasetColumnResponse(
  result: json['result'] != null ? DlpDatasetColumn.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpDatasetColumn? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpDatasetsUploadDatasetColumnResponse copyWith({DlpDatasetColumn Function()? result}) { return DlpDatasetsUploadDatasetColumnResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDatasetsUploadDatasetColumnResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpDatasetsUploadDatasetColumnResponse(result: $result)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_dataset.dart';final class DlpDatasetsUpdateResponse {const DlpDatasetsUpdateResponse({this.result});

factory DlpDatasetsUpdateResponse.fromJson(Map<String, dynamic> json) { return DlpDatasetsUpdateResponse(
  result: json['result'] != null ? DlpDataset.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpDataset? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpDatasetsUpdateResponse copyWith({DlpDataset Function()? result}) { return DlpDatasetsUpdateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDatasetsUpdateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpDatasetsUpdateResponse(result: $result)'; } 
 }

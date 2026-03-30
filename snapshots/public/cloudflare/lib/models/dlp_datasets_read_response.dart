// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_dataset.dart';final class DlpDatasetsReadResponse {const DlpDatasetsReadResponse({this.result});

factory DlpDatasetsReadResponse.fromJson(Map<String, dynamic> json) { return DlpDatasetsReadResponse(
  result: json['result'] != null ? DlpDataset.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpDataset? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpDatasetsReadResponse copyWith({DlpDataset Function()? result}) { return DlpDatasetsReadResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDatasetsReadResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpDatasetsReadResponse(result: $result)'; } 
 }

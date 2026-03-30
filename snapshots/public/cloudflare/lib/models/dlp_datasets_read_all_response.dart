// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_dataset.dart';final class DlpDatasetsReadAllResponse {const DlpDatasetsReadAllResponse({this.result});

factory DlpDatasetsReadAllResponse.fromJson(Map<String, dynamic> json) { return DlpDatasetsReadAllResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => DlpDataset.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DlpDataset>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpDatasetsReadAllResponse copyWith({List<DlpDataset> Function()? result}) { return DlpDatasetsReadAllResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDatasetsReadAllResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DlpDatasetsReadAllResponse(result: $result)'; } 
 }

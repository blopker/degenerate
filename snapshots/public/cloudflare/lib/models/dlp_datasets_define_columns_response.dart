// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_dataset_column.dart';final class DlpDatasetsDefineColumnsResponse {const DlpDatasetsDefineColumnsResponse({this.result});

factory DlpDatasetsDefineColumnsResponse.fromJson(Map<String, dynamic> json) { return DlpDatasetsDefineColumnsResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => DlpDatasetColumn.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DlpDatasetColumn>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpDatasetsDefineColumnsResponse copyWith({List<DlpDatasetColumn> Function()? result}) { return DlpDatasetsDefineColumnsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDatasetsDefineColumnsResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DlpDatasetsDefineColumnsResponse(result: $result)'; } 
 }

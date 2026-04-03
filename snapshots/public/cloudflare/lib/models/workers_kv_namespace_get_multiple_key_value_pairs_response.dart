// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_kv_bulk_get_result.dart';import 'workers_kv_bulk_get_result_with_metadata.dart';import 'workers_kv_namespace_get_multiple_key_value_pairs_response_result.dart';@immutable final class WorkersKvNamespaceGetMultipleKeyValuePairsResponse {const WorkersKvNamespaceGetMultipleKeyValuePairsResponse({this.result});

factory WorkersKvNamespaceGetMultipleKeyValuePairsResponse.fromJson(Map<String, dynamic> json) { return WorkersKvNamespaceGetMultipleKeyValuePairsResponse(
  result: json['result'] != null ? OneOf2.parse(json['result'], fromA: (v) => WorkersKvBulkGetResult.fromJson(v as Map<String, dynamic>), fromB: (v) => WorkersKvBulkGetResultWithMetadata.fromJson(v as Map<String, dynamic>),) : null,
); }

final WorkersKvNamespaceGetMultipleKeyValuePairsResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WorkersKvNamespaceGetMultipleKeyValuePairsResponse copyWith({WorkersKvNamespaceGetMultipleKeyValuePairsResponseResult Function()? result}) { return WorkersKvNamespaceGetMultipleKeyValuePairsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersKvNamespaceGetMultipleKeyValuePairsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WorkersKvNamespaceGetMultipleKeyValuePairsResponse(result: $result)'; } 
 }

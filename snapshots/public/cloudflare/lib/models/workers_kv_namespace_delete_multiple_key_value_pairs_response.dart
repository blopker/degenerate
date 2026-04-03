// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_kv_bulk_result.dart';@immutable final class WorkersKvNamespaceDeleteMultipleKeyValuePairsResponse {const WorkersKvNamespaceDeleteMultipleKeyValuePairsResponse({this.result});

factory WorkersKvNamespaceDeleteMultipleKeyValuePairsResponse.fromJson(Map<String, dynamic> json) { return WorkersKvNamespaceDeleteMultipleKeyValuePairsResponse(
  result: json['result'] != null ? WorkersKvBulkResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final WorkersKvBulkResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WorkersKvNamespaceDeleteMultipleKeyValuePairsResponse copyWith({WorkersKvBulkResult Function()? result}) { return WorkersKvNamespaceDeleteMultipleKeyValuePairsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersKvNamespaceDeleteMultipleKeyValuePairsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WorkersKvNamespaceDeleteMultipleKeyValuePairsResponse(result: $result)'; } 
 }

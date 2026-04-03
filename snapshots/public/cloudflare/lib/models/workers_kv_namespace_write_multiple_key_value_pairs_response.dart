// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_kv_bulk_result.dart';@immutable final class WorkersKvNamespaceWriteMultipleKeyValuePairsResponse {const WorkersKvNamespaceWriteMultipleKeyValuePairsResponse({this.result});

factory WorkersKvNamespaceWriteMultipleKeyValuePairsResponse.fromJson(Map<String, dynamic> json) { return WorkersKvNamespaceWriteMultipleKeyValuePairsResponse(
  result: json['result'] != null ? WorkersKvBulkResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final WorkersKvBulkResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WorkersKvNamespaceWriteMultipleKeyValuePairsResponse copyWith({WorkersKvBulkResult Function()? result}) { return WorkersKvNamespaceWriteMultipleKeyValuePairsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersKvNamespaceWriteMultipleKeyValuePairsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WorkersKvNamespaceWriteMultipleKeyValuePairsResponse(result: $result)'; } 
 }

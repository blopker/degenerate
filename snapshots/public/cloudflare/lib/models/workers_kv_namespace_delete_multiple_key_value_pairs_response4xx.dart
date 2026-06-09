// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_kv_bulk_result.dart';@immutable final class WorkersKvNamespaceDeleteMultipleKeyValuePairsResponse4xx {const WorkersKvNamespaceDeleteMultipleKeyValuePairsResponse4xx({this.result});

factory WorkersKvNamespaceDeleteMultipleKeyValuePairsResponse4xx.fromJson(Map<String, dynamic> json) { return WorkersKvNamespaceDeleteMultipleKeyValuePairsResponse4xx(
  result: json['result'] != null ? WorkersKvBulkResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final WorkersKvBulkResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WorkersKvNamespaceDeleteMultipleKeyValuePairsResponse4xx copyWith({WorkersKvBulkResult Function()? result}) { return WorkersKvNamespaceDeleteMultipleKeyValuePairsResponse4xx(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersKvNamespaceDeleteMultipleKeyValuePairsResponse4xx &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WorkersKvNamespaceDeleteMultipleKeyValuePairsResponse4xx(result: $result)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_kv_bulk_result.dart';final class WorkersKvNamespaceDeleteMultipleKeyValuePairsDeprecatedResponse4Xx {const WorkersKvNamespaceDeleteMultipleKeyValuePairsDeprecatedResponse4Xx({this.result});

factory WorkersKvNamespaceDeleteMultipleKeyValuePairsDeprecatedResponse4Xx.fromJson(Map<String, dynamic> json) { return WorkersKvNamespaceDeleteMultipleKeyValuePairsDeprecatedResponse4Xx(
  result: json['result'] != null ? WorkersKvBulkResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final WorkersKvBulkResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WorkersKvNamespaceDeleteMultipleKeyValuePairsDeprecatedResponse4Xx copyWith({WorkersKvBulkResult Function()? result}) { return WorkersKvNamespaceDeleteMultipleKeyValuePairsDeprecatedResponse4Xx(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersKvNamespaceDeleteMultipleKeyValuePairsDeprecatedResponse4Xx &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WorkersKvNamespaceDeleteMultipleKeyValuePairsDeprecatedResponse4Xx(result: $result)'; } 
 }

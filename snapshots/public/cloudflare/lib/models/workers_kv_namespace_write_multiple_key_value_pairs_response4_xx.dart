// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_kv_bulk_result.dart';final class WorkersKvNamespaceWriteMultipleKeyValuePairsResponse4Xx {const WorkersKvNamespaceWriteMultipleKeyValuePairsResponse4Xx({this.result});

factory WorkersKvNamespaceWriteMultipleKeyValuePairsResponse4Xx.fromJson(Map<String, dynamic> json) { return WorkersKvNamespaceWriteMultipleKeyValuePairsResponse4Xx(
  result: json['result'] != null ? WorkersKvBulkResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final WorkersKvBulkResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
WorkersKvNamespaceWriteMultipleKeyValuePairsResponse4Xx copyWith({WorkersKvBulkResult Function()? result}) { return WorkersKvNamespaceWriteMultipleKeyValuePairsResponse4Xx(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersKvNamespaceWriteMultipleKeyValuePairsResponse4Xx &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'WorkersKvNamespaceWriteMultipleKeyValuePairsResponse4Xx(result: $result)'; } 
 }

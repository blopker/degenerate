// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class WorkersKvBulkResult {const WorkersKvBulkResult({this.successfulKeyCount, this.unsuccessfulKeys, });

factory WorkersKvBulkResult.fromJson(Map<String, dynamic> json) { return WorkersKvBulkResult(
  successfulKeyCount: json['successful_key_count'] != null ? (json['successful_key_count'] as num).toDouble() : null,
  unsuccessfulKeys: (json['unsuccessful_keys'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Number of keys successfully updated.
final double? successfulKeyCount;

/// Name of the keys that failed to be fully updated. They should be retried.
final List<String>? unsuccessfulKeys;

Map<String, dynamic> toJson() { return {
  'successful_key_count': ?successfulKeyCount,
  'unsuccessful_keys': ?unsuccessfulKeys,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'successful_key_count', 'unsuccessful_keys'}.contains(key)); } 
WorkersKvBulkResult copyWith({double Function()? successfulKeyCount, List<String> Function()? unsuccessfulKeys, }) { return WorkersKvBulkResult(
  successfulKeyCount: successfulKeyCount != null ? successfulKeyCount() : this.successfulKeyCount,
  unsuccessfulKeys: unsuccessfulKeys != null ? unsuccessfulKeys() : this.unsuccessfulKeys,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersKvBulkResult &&
          successfulKeyCount == other.successfulKeyCount &&
          listEquals(unsuccessfulKeys, other.unsuccessfulKeys); } 
@override int get hashCode { return Object.hash(successfulKeyCount, Object.hashAll(unsuccessfulKeys ?? const [])); } 
@override String toString() { return 'WorkersKvBulkResult(successfulKeyCount: $successfulKeyCount, unsuccessfulKeys: $unsuccessfulKeys)'; } 
 }

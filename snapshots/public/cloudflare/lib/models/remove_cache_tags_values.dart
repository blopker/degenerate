// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_set_cache_tags_operation.dart';/// Remove cache tags using a list of values.
@immutable final class RemoveCacheTagsValues {const RemoveCacheTagsValues({required this.operation, required this.values, });

factory RemoveCacheTagsValues.fromJson(Map<String, dynamic> json) { return RemoveCacheTagsValues(
  operation: RulesetsSetCacheTagsOperation.fromJson(json['operation'] as String),
  values: (json['values'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The operation to perform on the cache tags.
final RulesetsSetCacheTagsOperation operation;

final List<String> values;

Map<String, dynamic> toJson() { return {
  'operation': operation.toJson(),
  'values': values,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('operation') &&
      json.containsKey('values'); } 
RemoveCacheTagsValues copyWith({RulesetsSetCacheTagsOperation? operation, List<String>? values, }) { return RemoveCacheTagsValues(
  operation: operation ?? this.operation,
  values: values ?? this.values,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RemoveCacheTagsValues &&
          operation == other.operation &&
          listEquals(values, other.values); } 
@override int get hashCode { return Object.hash(operation, Object.hashAll(values)); } 
@override String toString() { return 'RemoveCacheTagsValues(operation: $operation, values: $values)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_set_cache_tags_operation.dart';/// Set cache tags using a list of values.
@immutable final class SetCacheTagsValues {const SetCacheTagsValues({required this.operation, required this.values, });

factory SetCacheTagsValues.fromJson(Map<String, dynamic> json) { return SetCacheTagsValues(
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
SetCacheTagsValues copyWith({RulesetsSetCacheTagsOperation? operation, List<String>? values, }) { return SetCacheTagsValues(
  operation: operation ?? this.operation,
  values: values ?? this.values,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SetCacheTagsValues &&
          operation == other.operation &&
          listEquals(values, other.values); } 
@override int get hashCode { return Object.hash(operation, Object.hashAll(values)); } 
@override String toString() { return 'SetCacheTagsValues(operation: $operation, values: $values)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_set_cache_tags_operation.dart';/// Add cache tags using a list of values.
@immutable final class AddCacheTagsValues {const AddCacheTagsValues({required this.operation, required this.values, });

factory AddCacheTagsValues.fromJson(Map<String, dynamic> json) { return AddCacheTagsValues(
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
AddCacheTagsValues copyWith({RulesetsSetCacheTagsOperation? operation, List<String>? values, }) { return AddCacheTagsValues(
  operation: operation ?? this.operation,
  values: values ?? this.values,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AddCacheTagsValues &&
          operation == other.operation &&
          listEquals(values, other.values); } 
@override int get hashCode { return Object.hash(operation, Object.hashAll(values)); } 
@override String toString() { return 'AddCacheTagsValues(operation: $operation, values: $values)'; } 
 }

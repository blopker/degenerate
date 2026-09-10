// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_set_cache_tags_operation.dart';/// Remove cache tags using a list of values.
@immutable final class RemoveCacheTagsValues2 {const RemoveCacheTagsValues2({required this.operation, required this.values, });

factory RemoveCacheTagsValues2.fromJson(Map<String, dynamic> json) {return RemoveCacheTagsValues2(
  operation: RulesetsSetCacheTagsOperation.fromJson(json['operation'] as String),
  values: (json['values'] as List<dynamic>).map((e) => e as String).toList(),
);}

/// The operation to perform on the cache tags.
final RulesetsSetCacheTagsOperation operation;

/// A list of cache tag values.
final List<String> values;

Map<String, dynamic> toJson() {return {
  'operation': operation.toJson(),
  'values': values,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('operation') &&
      json.containsKey('values');}
RemoveCacheTagsValues2 copyWith({RulesetsSetCacheTagsOperation? operation, List<String>? values, }) {return RemoveCacheTagsValues2(
  operation: operation ?? this.operation,
  values: values ?? this.values,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is RemoveCacheTagsValues2 &&
          operation == other.operation &&
          listEquals(values, other.values);}
@override int get hashCode {return Object.hash(operation, Object.hashAll(values));}
@override String toString() {return 'RemoveCacheTagsValues2(operation: $operation, values: $values)';}
}

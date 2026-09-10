// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_set_cache_tags_expression.dart';import 'rulesets_set_cache_tags_operation.dart';/// Add cache tags using an expression.
@immutable final class AddCacheTagsExpression2 {const AddCacheTagsExpression2({required this.expression, required this.operation, });

factory AddCacheTagsExpression2.fromJson(Map<String, dynamic> json) {return AddCacheTagsExpression2(
  expression: RulesetsSetCacheTagsExpression.fromJson(json['expression'] as String),
  operation: RulesetsSetCacheTagsOperation.fromJson(json['operation'] as String),
);}

/// An expression that evaluates to an array of cache tag values.
final RulesetsSetCacheTagsExpression expression;

/// The operation to perform on the cache tags.
final RulesetsSetCacheTagsOperation operation;

Map<String, dynamic> toJson() {return {
  'expression': expression.toJson(),
  'operation': operation.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('expression') &&
      json.containsKey('operation');}
AddCacheTagsExpression2 copyWith({RulesetsSetCacheTagsExpression? expression, RulesetsSetCacheTagsOperation? operation, }) {return AddCacheTagsExpression2(
  expression: expression ?? this.expression,
  operation: operation ?? this.operation,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AddCacheTagsExpression2 &&
          expression == other.expression &&
          operation == other.operation;}
@override int get hashCode {return Object.hash(expression, operation);}
@override String toString() {return 'AddCacheTagsExpression2(expression: $expression, operation: $operation)';}
}

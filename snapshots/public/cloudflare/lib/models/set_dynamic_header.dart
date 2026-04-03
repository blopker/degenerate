// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_rewrite_header_expression.dart';import 'rulesets_rewrite_header_operation.dart';/// A header with a dynamic value to set.
@immutable final class SetDynamicHeader {const SetDynamicHeader({required this.expression, required this.operation, });

factory SetDynamicHeader.fromJson(Map<String, dynamic> json) { return SetDynamicHeader(
  expression: RulesetsRewriteHeaderExpression.fromJson(json['expression'] as String),
  operation: RulesetsRewriteHeaderOperation.fromJson(json['operation'] as String),
); }

/// An expression that evaluates to a value for the header.
final RulesetsRewriteHeaderExpression expression;

/// The operation to perform on the header.
final RulesetsRewriteHeaderOperation operation;

Map<String, dynamic> toJson() { return {
  'expression': expression.toJson(),
  'operation': operation.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('expression') &&
      json.containsKey('operation'); } 
SetDynamicHeader copyWith({RulesetsRewriteHeaderExpression? expression, RulesetsRewriteHeaderOperation? operation, }) { return SetDynamicHeader(
  expression: expression ?? this.expression,
  operation: operation ?? this.operation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SetDynamicHeader &&
          expression == other.expression &&
          operation == other.operation; } 
@override int get hashCode { return Object.hash(expression, operation); } 
@override String toString() { return 'SetDynamicHeader(expression: $expression, operation: $operation)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DosExpressionFilterUpdate {const DosExpressionFilterUpdate({this.expression, this.mode, });

factory DosExpressionFilterUpdate.fromJson(Map<String, dynamic> json) { return DosExpressionFilterUpdate(
  expression: json['expression'] as String?,
  mode: json['mode'] as String?,
); }

/// The new filter expression. Optional.
final String? expression;

/// The new mode for the filter. Optional. Must be one of 'enabled', 'disabled', 'monitoring'.
final String? mode;

Map<String, dynamic> toJson() { return {
  'expression': ?expression,
  'mode': ?mode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expression', 'mode'}.contains(key)); } 
DosExpressionFilterUpdate copyWith({String Function()? expression, String Function()? mode, }) { return DosExpressionFilterUpdate(
  expression: expression != null ? expression() : this.expression,
  mode: mode != null ? mode() : this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosExpressionFilterUpdate &&
          expression == other.expression &&
          mode == other.mode; } 
@override int get hashCode { return Object.hash(expression, mode); } 
@override String toString() { return 'DosExpressionFilterUpdate(expression: $expression, mode: $mode)'; } 
 }

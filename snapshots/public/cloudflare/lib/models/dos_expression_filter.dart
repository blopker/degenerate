// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DosExpressionFilter {const DosExpressionFilter({required this.createdOn, required this.expression, required this.id, required this.mode, required this.modifiedOn, });

factory DosExpressionFilter.fromJson(Map<String, dynamic> json) { return DosExpressionFilter(
  createdOn: DateTime.parse(json['created_on'] as String),
  expression: json['expression'] as String,
  id: json['id'] as String,
  mode: json['mode'] as String,
  modifiedOn: DateTime.parse(json['modified_on'] as String),
); }

/// The creation timestamp of the expression filter.
final DateTime createdOn;

/// The filter expression.
final String expression;

/// The unique ID of the expression filter.
final String id;

/// The filter's mode. Must be one of 'enabled', 'disabled', 'monitoring'.
final String mode;

/// The last modification timestamp of the expression filter.
final DateTime modifiedOn;

Map<String, dynamic> toJson() { return {
  'created_on': createdOn.toIso8601String(),
  'expression': expression,
  'id': id,
  'mode': mode,
  'modified_on': modifiedOn.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_on') && json['created_on'] is String &&
      json.containsKey('expression') && json['expression'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('mode') && json['mode'] is String &&
      json.containsKey('modified_on') && json['modified_on'] is String; } 
DosExpressionFilter copyWith({DateTime? createdOn, String? expression, String? id, String? mode, DateTime? modifiedOn, }) { return DosExpressionFilter(
  createdOn: createdOn ?? this.createdOn,
  expression: expression ?? this.expression,
  id: id ?? this.id,
  mode: mode ?? this.mode,
  modifiedOn: modifiedOn ?? this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosExpressionFilter &&
          createdOn == other.createdOn &&
          expression == other.expression &&
          id == other.id &&
          mode == other.mode &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(createdOn, expression, id, mode, modifiedOn); } 
@override String toString() { return 'DosExpressionFilter(createdOn: $createdOn, expression: $expression, id: $id, mode: $mode, modifiedOn: $modifiedOn)'; } 
 }

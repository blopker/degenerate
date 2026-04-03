// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages34_tools_variant2_function.dart';@immutable final class Messages34ToolsVariant2 {const Messages34ToolsVariant2({required this.function, required this.type, });

factory Messages34ToolsVariant2.fromJson(Map<String, dynamic> json) { return Messages34ToolsVariant2(
  function: Messages34ToolsVariant2Function.fromJson(json['function'] as Map<String, dynamic>),
  type: json['type'] as String,
); }

/// Details of the function tool.
final Messages34ToolsVariant2Function function;

/// Specifies the type of tool (e.g., 'function').
final String type;

Map<String, dynamic> toJson() { return {
  'function': function.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('function') &&
      json.containsKey('type') && json['type'] is String; } 
Messages34ToolsVariant2 copyWith({Messages34ToolsVariant2Function? function, String? type, }) { return Messages34ToolsVariant2(
  function: function ?? this.function,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages34ToolsVariant2 &&
          function == other.function &&
          type == other.type; } 
@override int get hashCode { return Object.hash(function, type); } 
@override String toString() { return 'Messages34ToolsVariant2(function: $function, type: $type)'; } 
 }

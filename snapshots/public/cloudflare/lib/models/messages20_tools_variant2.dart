// GENERATED CODE - DO NOT MODIFY BY HAND

import 'messages20_tools_variant2_function.dart';final class Messages20ToolsVariant2 {const Messages20ToolsVariant2({required this.function, required this.type, });

factory Messages20ToolsVariant2.fromJson(Map<String, dynamic> json) { return Messages20ToolsVariant2(
  function: Messages20ToolsVariant2Function.fromJson(json['function'] as Map<String, dynamic>),
  type: json['type'] as String,
); }

/// Details of the function tool.
final Messages20ToolsVariant2Function function;

/// Specifies the type of tool (e.g., 'function').
final String type;

Map<String, dynamic> toJson() { return {
  'function': function.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('function') &&
      json.containsKey('type') && json['type'] is String; } 
Messages20ToolsVariant2 copyWith({Messages20ToolsVariant2Function? function, String? type, }) { return Messages20ToolsVariant2(
  function: function ?? this.function,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages20ToolsVariant2 &&
          function == other.function &&
          type == other.type; } 
@override int get hashCode { return Object.hash(function, type); } 
@override String toString() { return 'Messages20ToolsVariant2(function: $function, type: $type)'; } 
 }

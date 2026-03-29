// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcp_list_tools_tool.dart';/// A list of tools available on an MCP server.
/// 
final class McpListTools {const McpListTools({required this.type, required this.id, required this.serverLabel, required this.tools, this.error, });

factory McpListTools.fromJson(Map<String, dynamic> json) { return McpListTools(
  type: json['type'] as String,
  id: json['id'] as String,
  serverLabel: json['server_label'] as String,
  tools: (json['tools'] as List<dynamic>).map((e) => McpListToolsTool.fromJson(e as Map<String, dynamic>)).toList(),
  error: json['error'] as String?,
); }

/// The type of the item. Always `mcp_list_tools`.
/// 
final String type;

/// The unique ID of the list.
/// 
final String id;

/// The label of the MCP server.
/// 
final String serverLabel;

/// The tools available on the server.
/// 
final List<McpListToolsTool> tools;

/// Error message if the server could not list tools.
/// 
final String? error;

Map<String, dynamic> toJson() { return {
  'type': type,
  'id': id,
  'server_label': serverLabel,
  'tools': tools.map((e) => e.toJson()).toList(),
  'error': ?error,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('server_label') && json['server_label'] is String &&
      json.containsKey('tools'); } 
McpListTools copyWith({String? type, String? id, String? serverLabel, List<McpListToolsTool>? tools, String? Function()? error, }) { return McpListTools(
  type: type ?? this.type,
  id: id ?? this.id,
  serverLabel: serverLabel ?? this.serverLabel,
  tools: tools ?? this.tools,
  error: error != null ? error() : this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McpListTools &&
          type == other.type &&
          id == other.id &&
          serverLabel == other.serverLabel &&
          listEquals(tools, other.tools) &&
          error == other.error; } 
@override int get hashCode { return Object.hash(type, id, serverLabel, Object.hashAll(tools), error); } 
@override String toString() { return 'McpListTools(type: $type, id: $id, serverLabel: $serverLabel, tools: $tools, error: $error)'; } 
 }

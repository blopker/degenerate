// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcp_list_tools_tool.dart';/// A Realtime item listing tools available on an MCP server.
/// 
@immutable final class RealtimeMcpListTools {const RealtimeMcpListTools({required this.type, required this.serverLabel, required this.tools, this.id, });

factory RealtimeMcpListTools.fromJson(Map<String, dynamic> json) { return RealtimeMcpListTools(
  type: json['type'] as String,
  id: json['id'] as String?,
  serverLabel: json['server_label'] as String,
  tools: (json['tools'] as List<dynamic>).map((e) => McpListToolsTool.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The type of the item. Always `mcp_list_tools`.
final String type;

/// The unique ID of the list.
final String? id;

/// The label of the MCP server.
final String serverLabel;

/// The tools available on the server.
final List<McpListToolsTool> tools;

Map<String, dynamic> toJson() { return {
  'type': type,
  'id': ?id,
  'server_label': serverLabel,
  'tools': tools.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('server_label') && json['server_label'] is String &&
      json.containsKey('tools'); } 
RealtimeMcpListTools copyWith({String? type, String Function()? id, String? serverLabel, List<McpListToolsTool>? tools, }) { return RealtimeMcpListTools(
  type: type ?? this.type,
  id: id != null ? id() : this.id,
  serverLabel: serverLabel ?? this.serverLabel,
  tools: tools ?? this.tools,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeMcpListTools &&
          type == other.type &&
          id == other.id &&
          serverLabel == other.serverLabel &&
          listEquals(tools, other.tools); } 
@override int get hashCode { return Object.hash(type, id, serverLabel, Object.hashAll(tools)); } 
@override String toString() { return 'RealtimeMcpListTools(type: $type, id: $id, serverLabel: $serverLabel, tools: $tools)'; } 
 }

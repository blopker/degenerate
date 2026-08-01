// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_mcp_protocol_error.dart';import 'realtime_mcp_tool_call_error.dart';import 'realtime_mcp_tool_execution_error.dart';import 'realtime_mcphttp_error.dart';/// A Realtime item representing an invocation of a tool on an MCP server.
/// 
@immutable final class RealtimeMcpToolCall {const RealtimeMcpToolCall({required this.type, required this.id, required this.serverLabel, required this.name, required this.arguments, this.approvalRequestId = const Omittable.absent(), this.output = const Omittable.absent(), this.error = const Omittable.absent(), });

factory RealtimeMcpToolCall.fromJson(Map<String, dynamic> json) { return RealtimeMcpToolCall(
  type: json['type'] as String,
  id: json['id'] as String,
  serverLabel: json['server_label'] as String,
  name: json['name'] as String,
  arguments: json['arguments'] as String,
  approvalRequestId: json.containsKey('approval_request_id') ? Omittable(json['approval_request_id'] as String?) : const Omittable.absent(),
  output: json.containsKey('output') ? Omittable(json['output'] as String?) : const Omittable.absent(),
  error: json.containsKey('error') ? Omittable(json['error'] != null ? OneOf3.parse(json['error'], fromA: (v) => RealtimeMcpProtocolError.fromJson(v as Map<String, dynamic>), fromB: (v) => RealtimeMcpToolExecutionError.fromJson(v as Map<String, dynamic>), fromC: (v) => RealtimeMcphttpError.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
); }

/// The type of the item. Always `mcp_call`.
final String type;

/// The unique ID of the tool call.
final String id;

/// The label of the MCP server running the tool.
final String serverLabel;

/// The name of the tool that was run.
final String name;

/// A JSON string of the arguments passed to the tool.
final String arguments;

/// The ID of an associated approval request, if any.
final Omittable<String?> approvalRequestId;

/// The output from the tool call.
final Omittable<String?> output;

/// The error from the tool call, if any.
final Omittable<RealtimeMcpToolCallError?> error;

Map<String, dynamic> toJson() { return {
  'type': type,
  'id': id,
  'server_label': serverLabel,
  'name': name,
  'arguments': arguments,
  if (approvalRequestId.isPresent) 'approval_request_id': approvalRequestId.value,
  if (output.isPresent) 'output': output.value,
  if (error.isPresent) 'error': error.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('server_label') && json['server_label'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('arguments') && json['arguments'] is String; } 
RealtimeMcpToolCall copyWith({String? type, String? id, String? serverLabel, String? name, String? arguments, Omittable<String?>? approvalRequestId, Omittable<String?>? output, Omittable<RealtimeMcpToolCallError?>? error, }) { return RealtimeMcpToolCall(
  type: type ?? this.type,
  id: id ?? this.id,
  serverLabel: serverLabel ?? this.serverLabel,
  name: name ?? this.name,
  arguments: arguments ?? this.arguments,
  approvalRequestId: approvalRequestId ?? this.approvalRequestId,
  output: output ?? this.output,
  error: error ?? this.error,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeMcpToolCall &&
          type == other.type &&
          id == other.id &&
          serverLabel == other.serverLabel &&
          name == other.name &&
          arguments == other.arguments &&
          approvalRequestId == other.approvalRequestId &&
          output == other.output &&
          error == other.error; } 
@override int get hashCode { return Object.hash(type, id, serverLabel, name, arguments, approvalRequestId, output, error); } 
@override String toString() { return 'RealtimeMcpToolCall(type: $type, id: $id, serverLabel: $serverLabel, name: $name, arguments: $arguments, approvalRequestId: $approvalRequestId, output: $output, error: $error)'; } 
 }

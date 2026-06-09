// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_conversation_item_function_call.dart';import 'realtime_conversation_item_function_call_output.dart';import 'realtime_conversation_item_message_assistant.dart';import 'realtime_mcp_approval_request.dart';import 'realtime_mcp_approval_response.dart';import 'realtime_mcp_list_tools.dart';import 'realtime_mcp_tool_call.dart';/// A single item within a Realtime conversation.
sealed class RealtimeConversationItem {const RealtimeConversationItem();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory RealtimeConversationItem.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'message' => RealtimeConversationItemMessage.fromJson(json),
  'function_call' => RealtimeConversationItem$FunctionCall.fromJson(json),
  'function_call_output' => RealtimeConversationItem$FunctionCallOutput.fromJson(json),
  'mcp_approval_response' => RealtimeConversationItemMcpApprovalResponse.fromJson(json),
  'mcp_list_tools' => RealtimeConversationItemMcpListTools.fromJson(json),
  'mcp_call' => RealtimeConversationItemMcpCall.fromJson(json),
  'mcp_approval_request' => RealtimeConversationItemMcpApprovalRequest.fromJson(json),
  _ => RealtimeConversationItem$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is RealtimeConversationItem$Unknown; } 
 }
@immutable final class RealtimeConversationItemMessage extends RealtimeConversationItem {const RealtimeConversationItemMessage(this.realtimeConversationItemMessageAssistant);

factory RealtimeConversationItemMessage.fromJson(Map<String, dynamic> json) { return RealtimeConversationItemMessage(RealtimeConversationItemMessageAssistant.fromJson(json)); }

final RealtimeConversationItemMessageAssistant realtimeConversationItemMessageAssistant;

@override String get type { return 'message'; } 
@override Map<String, dynamic> toJson() { return {...realtimeConversationItemMessageAssistant.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeConversationItemMessage && realtimeConversationItemMessageAssistant == other.realtimeConversationItemMessageAssistant; } 
@override int get hashCode { return realtimeConversationItemMessageAssistant.hashCode; } 
@override String toString() { return 'RealtimeConversationItemMessage(realtimeConversationItemMessageAssistant: $realtimeConversationItemMessageAssistant)'; } 
 }
@immutable final class RealtimeConversationItem$FunctionCall extends RealtimeConversationItem {const RealtimeConversationItem$FunctionCall(this.realtimeConversationItemFunctionCall);

factory RealtimeConversationItem$FunctionCall.fromJson(Map<String, dynamic> json) { return RealtimeConversationItem$FunctionCall(RealtimeConversationItemFunctionCall.fromJson(json)); }

final RealtimeConversationItemFunctionCall realtimeConversationItemFunctionCall;

@override String get type { return 'function_call'; } 
@override Map<String, dynamic> toJson() { return {...realtimeConversationItemFunctionCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeConversationItem$FunctionCall && realtimeConversationItemFunctionCall == other.realtimeConversationItemFunctionCall; } 
@override int get hashCode { return realtimeConversationItemFunctionCall.hashCode; } 
@override String toString() { return 'RealtimeConversationItem\$FunctionCall(realtimeConversationItemFunctionCall: $realtimeConversationItemFunctionCall)'; } 
 }
@immutable final class RealtimeConversationItem$FunctionCallOutput extends RealtimeConversationItem {const RealtimeConversationItem$FunctionCallOutput(this.realtimeConversationItemFunctionCallOutput);

factory RealtimeConversationItem$FunctionCallOutput.fromJson(Map<String, dynamic> json) { return RealtimeConversationItem$FunctionCallOutput(RealtimeConversationItemFunctionCallOutput.fromJson(json)); }

final RealtimeConversationItemFunctionCallOutput realtimeConversationItemFunctionCallOutput;

@override String get type { return 'function_call_output'; } 
@override Map<String, dynamic> toJson() { return {...realtimeConversationItemFunctionCallOutput.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeConversationItem$FunctionCallOutput && realtimeConversationItemFunctionCallOutput == other.realtimeConversationItemFunctionCallOutput; } 
@override int get hashCode { return realtimeConversationItemFunctionCallOutput.hashCode; } 
@override String toString() { return 'RealtimeConversationItem\$FunctionCallOutput(realtimeConversationItemFunctionCallOutput: $realtimeConversationItemFunctionCallOutput)'; } 
 }
@immutable final class RealtimeConversationItemMcpApprovalResponse extends RealtimeConversationItem {const RealtimeConversationItemMcpApprovalResponse(this.realtimeMcpApprovalResponse);

factory RealtimeConversationItemMcpApprovalResponse.fromJson(Map<String, dynamic> json) { return RealtimeConversationItemMcpApprovalResponse(RealtimeMcpApprovalResponse.fromJson(json)); }

final RealtimeMcpApprovalResponse realtimeMcpApprovalResponse;

@override String get type { return 'mcp_approval_response'; } 
@override Map<String, dynamic> toJson() { return {...realtimeMcpApprovalResponse.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeConversationItemMcpApprovalResponse && realtimeMcpApprovalResponse == other.realtimeMcpApprovalResponse; } 
@override int get hashCode { return realtimeMcpApprovalResponse.hashCode; } 
@override String toString() { return 'RealtimeConversationItemMcpApprovalResponse(realtimeMcpApprovalResponse: $realtimeMcpApprovalResponse)'; } 
 }
@immutable final class RealtimeConversationItemMcpListTools extends RealtimeConversationItem {const RealtimeConversationItemMcpListTools(this.realtimeMcpListTools);

factory RealtimeConversationItemMcpListTools.fromJson(Map<String, dynamic> json) { return RealtimeConversationItemMcpListTools(RealtimeMcpListTools.fromJson(json)); }

final RealtimeMcpListTools realtimeMcpListTools;

@override String get type { return 'mcp_list_tools'; } 
@override Map<String, dynamic> toJson() { return {...realtimeMcpListTools.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeConversationItemMcpListTools && realtimeMcpListTools == other.realtimeMcpListTools; } 
@override int get hashCode { return realtimeMcpListTools.hashCode; } 
@override String toString() { return 'RealtimeConversationItemMcpListTools(realtimeMcpListTools: $realtimeMcpListTools)'; } 
 }
@immutable final class RealtimeConversationItemMcpCall extends RealtimeConversationItem {const RealtimeConversationItemMcpCall(this.realtimeMcpToolCall);

factory RealtimeConversationItemMcpCall.fromJson(Map<String, dynamic> json) { return RealtimeConversationItemMcpCall(RealtimeMcpToolCall.fromJson(json)); }

final RealtimeMcpToolCall realtimeMcpToolCall;

@override String get type { return 'mcp_call'; } 
@override Map<String, dynamic> toJson() { return {...realtimeMcpToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeConversationItemMcpCall && realtimeMcpToolCall == other.realtimeMcpToolCall; } 
@override int get hashCode { return realtimeMcpToolCall.hashCode; } 
@override String toString() { return 'RealtimeConversationItemMcpCall(realtimeMcpToolCall: $realtimeMcpToolCall)'; } 
 }
@immutable final class RealtimeConversationItemMcpApprovalRequest extends RealtimeConversationItem {const RealtimeConversationItemMcpApprovalRequest(this.realtimeMcpApprovalRequest);

factory RealtimeConversationItemMcpApprovalRequest.fromJson(Map<String, dynamic> json) { return RealtimeConversationItemMcpApprovalRequest(RealtimeMcpApprovalRequest.fromJson(json)); }

final RealtimeMcpApprovalRequest realtimeMcpApprovalRequest;

@override String get type { return 'mcp_approval_request'; } 
@override Map<String, dynamic> toJson() { return {...realtimeMcpApprovalRequest.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeConversationItemMcpApprovalRequest && realtimeMcpApprovalRequest == other.realtimeMcpApprovalRequest; } 
@override int get hashCode { return realtimeMcpApprovalRequest.hashCode; } 
@override String toString() { return 'RealtimeConversationItemMcpApprovalRequest(realtimeMcpApprovalRequest: $realtimeMcpApprovalRequest)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class RealtimeConversationItem$Unknown extends RealtimeConversationItem {const RealtimeConversationItem$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeConversationItem$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'RealtimeConversationItem.unknown($json)'; } 
 }

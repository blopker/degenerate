// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'realtime_conversation_item.dart';import 'realtime_conversation_item_function_call.dart';import 'realtime_conversation_item_function_call_output.dart';import 'realtime_conversation_item_message_assistant.dart';import 'realtime_conversation_item_message_system.dart';import 'realtime_conversation_item_message_user.dart';import 'realtime_mcp_approval_request.dart';import 'realtime_mcp_approval_response.dart';import 'realtime_mcp_list_tools.dart';import 'realtime_mcp_tool_call.dart';/// The event type, must be `response.output_item.added`.
final class RealtimeServerEventResponseOutputItemAddedType {const RealtimeServerEventResponseOutputItemAddedType._(this.value);

factory RealtimeServerEventResponseOutputItemAddedType.fromJson(String json) { return switch (json) {
  'response.output_item.added' => responseOutputItemAdded,
  _ => RealtimeServerEventResponseOutputItemAddedType._(json),
}; }

static const RealtimeServerEventResponseOutputItemAddedType responseOutputItemAdded = RealtimeServerEventResponseOutputItemAddedType._('response.output_item.added');

static const List<RealtimeServerEventResponseOutputItemAddedType> values = [responseOutputItemAdded];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeServerEventResponseOutputItemAddedType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeServerEventResponseOutputItemAddedType($value)'; } 
 }
/// Returned when a new Item is created during Response generation.
final class RealtimeServerEventResponseOutputItemAdded {const RealtimeServerEventResponseOutputItemAdded({required this.eventId, required this.type, required this.responseId, required this.outputIndex, required this.item, });

factory RealtimeServerEventResponseOutputItemAdded.fromJson(Map<String, dynamic> json) { return RealtimeServerEventResponseOutputItemAdded(
  eventId: json['event_id'] as String,
  type: RealtimeServerEventResponseOutputItemAddedType.fromJson(json['type'] as String),
  responseId: json['response_id'] as String,
  outputIndex: (json['output_index'] as num).toInt(),
  item: OneOf9.parse(json['item'], fromA: (v) => RealtimeConversationItemMessageSystem.fromJson(v as Map<String, dynamic>), fromB: (v) => RealtimeConversationItemMessageUser.fromJson(v as Map<String, dynamic>), fromC: (v) => RealtimeConversationItemMessageAssistant.fromJson(v as Map<String, dynamic>), fromD: (v) => RealtimeConversationItemFunctionCall.fromJson(v as Map<String, dynamic>), fromE: (v) => RealtimeConversationItemFunctionCallOutput.fromJson(v as Map<String, dynamic>), fromF: (v) => RealtimeMcpApprovalResponse.fromJson(v as Map<String, dynamic>), fromG: (v) => RealtimeMcpListTools.fromJson(v as Map<String, dynamic>), fromH: (v) => RealtimeMcpToolCall.fromJson(v as Map<String, dynamic>), fromI: (v) => RealtimeMcpApprovalRequest.fromJson(v as Map<String, dynamic>),),
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `response.output_item.added`.
final RealtimeServerEventResponseOutputItemAddedType type;

/// The ID of the Response to which the item belongs.
final String responseId;

/// The index of the output item in the Response.
final int outputIndex;

final RealtimeConversationItem item;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type.toJson(),
  'response_id': responseId,
  'output_index': outputIndex,
  'item': item.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') &&
      json.containsKey('response_id') && json['response_id'] is String &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('item'); } 
RealtimeServerEventResponseOutputItemAdded copyWith({String? eventId, RealtimeServerEventResponseOutputItemAddedType? type, String? responseId, int? outputIndex, RealtimeConversationItem? item, }) { return RealtimeServerEventResponseOutputItemAdded(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  responseId: responseId ?? this.responseId,
  outputIndex: outputIndex ?? this.outputIndex,
  item: item ?? this.item,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeServerEventResponseOutputItemAdded &&
          eventId == other.eventId &&
          type == other.type &&
          responseId == other.responseId &&
          outputIndex == other.outputIndex &&
          item == other.item; } 
@override int get hashCode { return Object.hash(eventId, type, responseId, outputIndex, item); } 
@override String toString() { return 'RealtimeServerEventResponseOutputItemAdded(eventId: $eventId, type: $type, responseId: $responseId, outputIndex: $outputIndex, item: $item)'; } 
 }

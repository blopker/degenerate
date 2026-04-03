// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The event type, must be `response.function_call_arguments.done`.
/// 
@immutable final class RealtimeBetaServerEventResponseFunctionCallArgumentsDoneType {const RealtimeBetaServerEventResponseFunctionCallArgumentsDoneType._(this.value);

factory RealtimeBetaServerEventResponseFunctionCallArgumentsDoneType.fromJson(String json) { return switch (json) {
  'response.function_call_arguments.done' => responseFunctionCallArgumentsDone,
  _ => RealtimeBetaServerEventResponseFunctionCallArgumentsDoneType._(json),
}; }

static const RealtimeBetaServerEventResponseFunctionCallArgumentsDoneType responseFunctionCallArgumentsDone = RealtimeBetaServerEventResponseFunctionCallArgumentsDoneType._('response.function_call_arguments.done');

static const List<RealtimeBetaServerEventResponseFunctionCallArgumentsDoneType> values = [responseFunctionCallArgumentsDone];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeBetaServerEventResponseFunctionCallArgumentsDoneType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeBetaServerEventResponseFunctionCallArgumentsDoneType($value)'; } 
 }
/// Returned when the model-generated function call arguments are done streaming.
/// Also emitted when a Response is interrupted, incomplete, or cancelled.
/// 
@immutable final class RealtimeBetaServerEventResponseFunctionCallArgumentsDone {const RealtimeBetaServerEventResponseFunctionCallArgumentsDone({required this.eventId, required this.type, required this.responseId, required this.itemId, required this.outputIndex, required this.callId, required this.name, required this.arguments, });

factory RealtimeBetaServerEventResponseFunctionCallArgumentsDone.fromJson(Map<String, dynamic> json) { return RealtimeBetaServerEventResponseFunctionCallArgumentsDone(
  eventId: json['event_id'] as String,
  type: RealtimeBetaServerEventResponseFunctionCallArgumentsDoneType.fromJson(json['type'] as String),
  responseId: json['response_id'] as String,
  itemId: json['item_id'] as String,
  outputIndex: (json['output_index'] as num).toInt(),
  callId: json['call_id'] as String,
  name: json['name'] as String,
  arguments: json['arguments'] as String,
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `response.function_call_arguments.done`.
/// 
final RealtimeBetaServerEventResponseFunctionCallArgumentsDoneType type;

/// The ID of the response.
final String responseId;

/// The ID of the function call item.
final String itemId;

/// The index of the output item in the response.
final int outputIndex;

/// The ID of the function call.
final String callId;

/// The name of the function that was called.
final String name;

/// The final arguments as a JSON string.
final String arguments;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type.toJson(),
  'response_id': responseId,
  'item_id': itemId,
  'output_index': outputIndex,
  'call_id': callId,
  'name': name,
  'arguments': arguments,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') &&
      json.containsKey('response_id') && json['response_id'] is String &&
      json.containsKey('item_id') && json['item_id'] is String &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('call_id') && json['call_id'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('arguments') && json['arguments'] is String; } 
RealtimeBetaServerEventResponseFunctionCallArgumentsDone copyWith({String? eventId, RealtimeBetaServerEventResponseFunctionCallArgumentsDoneType? type, String? responseId, String? itemId, int? outputIndex, String? callId, String? name, String? arguments, }) { return RealtimeBetaServerEventResponseFunctionCallArgumentsDone(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  responseId: responseId ?? this.responseId,
  itemId: itemId ?? this.itemId,
  outputIndex: outputIndex ?? this.outputIndex,
  callId: callId ?? this.callId,
  name: name ?? this.name,
  arguments: arguments ?? this.arguments,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeBetaServerEventResponseFunctionCallArgumentsDone &&
          eventId == other.eventId &&
          type == other.type &&
          responseId == other.responseId &&
          itemId == other.itemId &&
          outputIndex == other.outputIndex &&
          callId == other.callId &&
          name == other.name &&
          arguments == other.arguments; } 
@override int get hashCode { return Object.hash(eventId, type, responseId, itemId, outputIndex, callId, name, arguments); } 
@override String toString() { return 'RealtimeBetaServerEventResponseFunctionCallArgumentsDone(eventId: $eventId, type: $type, responseId: $responseId, itemId: $itemId, outputIndex: $outputIndex, callId: $callId, name: $name, arguments: $arguments)'; } 
 }

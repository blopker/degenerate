// GENERATED CODE - DO NOT MODIFY BY HAND

/// The event type, must be `response.mcp_call_arguments.delta`.
final class RealtimeBetaServerEventResponseMcpCallArgumentsDeltaType {const RealtimeBetaServerEventResponseMcpCallArgumentsDeltaType._(this.value);

factory RealtimeBetaServerEventResponseMcpCallArgumentsDeltaType.fromJson(String json) { return switch (json) {
  'response.mcp_call_arguments.delta' => responseMcpCallArgumentsDelta,
  _ => RealtimeBetaServerEventResponseMcpCallArgumentsDeltaType._(json),
}; }

static const RealtimeBetaServerEventResponseMcpCallArgumentsDeltaType responseMcpCallArgumentsDelta = RealtimeBetaServerEventResponseMcpCallArgumentsDeltaType._('response.mcp_call_arguments.delta');

static const List<RealtimeBetaServerEventResponseMcpCallArgumentsDeltaType> values = [responseMcpCallArgumentsDelta];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeBetaServerEventResponseMcpCallArgumentsDeltaType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeBetaServerEventResponseMcpCallArgumentsDeltaType($value)'; } 
 }
/// Returned when MCP tool call arguments are updated during response generation.
final class RealtimeBetaServerEventResponseMcpCallArgumentsDelta {const RealtimeBetaServerEventResponseMcpCallArgumentsDelta({required this.eventId, required this.type, required this.responseId, required this.itemId, required this.outputIndex, required this.delta, this.obfuscation, });

factory RealtimeBetaServerEventResponseMcpCallArgumentsDelta.fromJson(Map<String, dynamic> json) { return RealtimeBetaServerEventResponseMcpCallArgumentsDelta(
  eventId: json['event_id'] as String,
  type: RealtimeBetaServerEventResponseMcpCallArgumentsDeltaType.fromJson(json['type'] as String),
  responseId: json['response_id'] as String,
  itemId: json['item_id'] as String,
  outputIndex: (json['output_index'] as num).toInt(),
  delta: json['delta'] as String,
  obfuscation: json['obfuscation'] as String?,
); }

/// The unique ID of the server event.
final String eventId;

/// The event type, must be `response.mcp_call_arguments.delta`.
final RealtimeBetaServerEventResponseMcpCallArgumentsDeltaType type;

/// The ID of the response.
final String responseId;

/// The ID of the MCP tool call item.
final String itemId;

/// The index of the output item in the response.
final int outputIndex;

/// The JSON-encoded arguments delta.
final String delta;

/// If present, indicates the delta text was obfuscated.
final String? obfuscation;

Map<String, dynamic> toJson() { return {
  'event_id': eventId,
  'type': type.toJson(),
  'response_id': responseId,
  'item_id': itemId,
  'output_index': outputIndex,
  'delta': delta,
  'obfuscation': ?obfuscation,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event_id') && json['event_id'] is String &&
      json.containsKey('type') &&
      json.containsKey('response_id') && json['response_id'] is String &&
      json.containsKey('item_id') && json['item_id'] is String &&
      json.containsKey('output_index') && json['output_index'] is num &&
      json.containsKey('delta') && json['delta'] is String; } 
RealtimeBetaServerEventResponseMcpCallArgumentsDelta copyWith({String? eventId, RealtimeBetaServerEventResponseMcpCallArgumentsDeltaType? type, String? responseId, String? itemId, int? outputIndex, String? delta, String? Function()? obfuscation, }) { return RealtimeBetaServerEventResponseMcpCallArgumentsDelta(
  eventId: eventId ?? this.eventId,
  type: type ?? this.type,
  responseId: responseId ?? this.responseId,
  itemId: itemId ?? this.itemId,
  outputIndex: outputIndex ?? this.outputIndex,
  delta: delta ?? this.delta,
  obfuscation: obfuscation != null ? obfuscation() : this.obfuscation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeBetaServerEventResponseMcpCallArgumentsDelta &&
          eventId == other.eventId &&
          type == other.type &&
          responseId == other.responseId &&
          itemId == other.itemId &&
          outputIndex == other.outputIndex &&
          delta == other.delta &&
          obfuscation == other.obfuscation; } 
@override int get hashCode { return Object.hash(eventId, type, responseId, itemId, outputIndex, delta, obfuscation); } 
@override String toString() { return 'RealtimeBetaServerEventResponseMcpCallArgumentsDelta(eventId: $eventId, type: $type, responseId: $responseId, itemId: $itemId, outputIndex: $outputIndex, delta: $delta, obfuscation: $obfuscation)'; } 
 }

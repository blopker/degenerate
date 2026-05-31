// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'response_stream_event.dart';/// Server events emitted by the Responses WebSocket server.
/// 
sealed class ResponsesServerEvent {const ResponsesServerEvent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ResponsesServerEvent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'ResponseStreamEvent' => ResponsesServerEventResponseStreamEvent.fromJson(json),
  _ => ResponsesServerEvent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ResponsesServerEvent$Unknown; } 
 }
@immutable final class ResponsesServerEventResponseStreamEvent extends ResponsesServerEvent {const ResponsesServerEventResponseStreamEvent(this.responseStreamEvent);

factory ResponsesServerEventResponseStreamEvent.fromJson(Map<String, dynamic> json) { return ResponsesServerEventResponseStreamEvent(ResponseStreamEvent.fromJson(json)); }

final ResponseStreamEvent responseStreamEvent;

@override String get type { return 'ResponseStreamEvent'; } 
@override Map<String, dynamic> toJson() { return {...responseStreamEvent.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponsesServerEventResponseStreamEvent && responseStreamEvent == other.responseStreamEvent; } 
@override int get hashCode { return responseStreamEvent.hashCode; } 
@override String toString() { return 'ResponsesServerEventResponseStreamEvent(responseStreamEvent: $responseStreamEvent)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class ResponsesServerEvent$Unknown extends ResponsesServerEvent {const ResponsesServerEvent$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponsesServerEvent$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ResponsesServerEvent.unknown($json)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_response.dart';/// Client events accepted by the Responses WebSocket server.
/// 
sealed class ResponsesClientEvent {const ResponsesClientEvent();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ResponsesClientEvent.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'response.create' => ResponsesClientEventResponseCreate.fromJson(json),
  _ => ResponsesClientEvent$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ResponsesClientEvent$Unknown; } 
 }
@immutable final class ResponsesClientEventResponseCreate extends ResponsesClientEvent {const ResponsesClientEventResponseCreate(this.createResponse);

factory ResponsesClientEventResponseCreate.fromJson(Map<String, dynamic> json) { return ResponsesClientEventResponseCreate(CreateResponse.fromJson(json)); }

final CreateResponse createResponse;

@override String get type { return 'response.create'; } 
@override Map<String, dynamic> toJson() { return {...createResponse.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponsesClientEventResponseCreate && createResponse == other.createResponse; } 
@override int get hashCode { return createResponse.hashCode; } 
@override String toString() { return 'ResponsesClientEventResponseCreate(createResponse: $createResponse)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
@immutable final class ResponsesClientEvent$Unknown extends ResponsesClientEvent {const ResponsesClientEvent$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponsesClientEvent$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ResponsesClientEvent.unknown($json)'; } 
 }

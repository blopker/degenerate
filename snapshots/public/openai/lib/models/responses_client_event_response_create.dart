// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of the client event. Always `response.create`.
/// 
@immutable final class ResponsesClientEventResponseCreateType {const ResponsesClientEventResponseCreateType._(this.value);

factory ResponsesClientEventResponseCreateType.fromJson(String json) { return switch (json) {
  'response.create' => responseCreate,
  _ => ResponsesClientEventResponseCreateType._(json),
}; }

static const ResponsesClientEventResponseCreateType responseCreate = ResponsesClientEventResponseCreateType._('response.create');

static const List<ResponsesClientEventResponseCreateType> values = [responseCreate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponsesClientEventResponseCreateType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponsesClientEventResponseCreateType($value)'; } 
 }
/// Client event for creating a response over a persistent WebSocket connection.
/// This payload uses the same top-level fields as `POST /v1/responses`.
/// 
/// Notes:
/// - `stream` is implicit over WebSocket and should not be sent.
/// - `background` is not supported over WebSocket.
/// 
@immutable final class ResponsesClientEventResponseCreate {const ResponsesClientEventResponseCreate({required this.type});

factory ResponsesClientEventResponseCreate.fromJson(Map<String, dynamic> json) { return ResponsesClientEventResponseCreate(
  type: ResponsesClientEventResponseCreateType.fromJson(json['type'] as String),
); }

/// The type of the client event. Always `response.create`.
/// 
final ResponsesClientEventResponseCreateType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
ResponsesClientEventResponseCreate copyWith({ResponsesClientEventResponseCreateType? type}) { return ResponsesClientEventResponseCreate(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponsesClientEventResponseCreate &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'ResponsesClientEventResponseCreate(type: $type)'; } 
 }

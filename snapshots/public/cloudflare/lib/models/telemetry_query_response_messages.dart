// GENERATED CODE - DO NOT MODIFY BY HAND

final class TelemetryQueryResponseMessagesMessage {const TelemetryQueryResponseMessagesMessage._(this.value);

factory TelemetryQueryResponseMessagesMessage.fromJson(String json) { return switch (json) {
  'Successful request' => successfulRequest,
  _ => TelemetryQueryResponseMessagesMessage._(json),
}; }

static const TelemetryQueryResponseMessagesMessage successfulRequest = TelemetryQueryResponseMessagesMessage._('Successful request');

static const List<TelemetryQueryResponseMessagesMessage> values = [successfulRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TelemetryQueryResponseMessagesMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TelemetryQueryResponseMessagesMessage($value)'; } 
 }
final class TelemetryQueryResponseMessages {const TelemetryQueryResponseMessages({required this.message});

factory TelemetryQueryResponseMessages.fromJson(Map<String, dynamic> json) { return TelemetryQueryResponseMessages(
  message: TelemetryQueryResponseMessagesMessage.fromJson(json['message'] as String),
); }

final TelemetryQueryResponseMessagesMessage message;

Map<String, dynamic> toJson() { return {
  'message': message.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message'); } 
TelemetryQueryResponseMessages copyWith({TelemetryQueryResponseMessagesMessage? message}) { return TelemetryQueryResponseMessages(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TelemetryQueryResponseMessages &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'TelemetryQueryResponseMessages(message: $message)'; } 
 }

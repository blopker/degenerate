// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DestinationCreateResponseMessagesMessage {const DestinationCreateResponseMessagesMessage._(this.value);

factory DestinationCreateResponseMessagesMessage.fromJson(String json) { return switch (json) {
  'Resource created' => resourceCreated,
  _ => DestinationCreateResponseMessagesMessage._(json),
}; }

static const DestinationCreateResponseMessagesMessage resourceCreated = DestinationCreateResponseMessagesMessage._('Resource created');

static const List<DestinationCreateResponseMessagesMessage> values = [resourceCreated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationCreateResponseMessagesMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DestinationCreateResponseMessagesMessage($value)'; } 
 }
@immutable final class DestinationCreateResponseMessages {const DestinationCreateResponseMessages({required this.message});

factory DestinationCreateResponseMessages.fromJson(Map<String, dynamic> json) { return DestinationCreateResponseMessages(
  message: DestinationCreateResponseMessagesMessage.fromJson(json['message'] as String),
); }

final DestinationCreateResponseMessagesMessage message;

Map<String, dynamic> toJson() { return {
  'message': message.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message'); } 
DestinationCreateResponseMessages copyWith({DestinationCreateResponseMessagesMessage? message}) { return DestinationCreateResponseMessages(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationCreateResponseMessages &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'DestinationCreateResponseMessages(message: $message)'; } 
 }

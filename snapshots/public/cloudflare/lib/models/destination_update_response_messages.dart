// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DestinationUpdateResponseMessagesMessage {const DestinationUpdateResponseMessagesMessage._(this.value);

factory DestinationUpdateResponseMessagesMessage.fromJson(String json) { return switch (json) {
  'Successful request' => successfulRequest,
  _ => DestinationUpdateResponseMessagesMessage._(json),
}; }

static const DestinationUpdateResponseMessagesMessage successfulRequest = DestinationUpdateResponseMessagesMessage._('Successful request');

static const List<DestinationUpdateResponseMessagesMessage> values = [successfulRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationUpdateResponseMessagesMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DestinationUpdateResponseMessagesMessage($value)'; } 
 }
@immutable final class DestinationUpdateResponseMessages {const DestinationUpdateResponseMessages({required this.message});

factory DestinationUpdateResponseMessages.fromJson(Map<String, dynamic> json) { return DestinationUpdateResponseMessages(
  message: DestinationUpdateResponseMessagesMessage.fromJson(json['message'] as String),
); }

final DestinationUpdateResponseMessagesMessage message;

Map<String, dynamic> toJson() { return {
  'message': message.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message'); } 
DestinationUpdateResponseMessages copyWith({DestinationUpdateResponseMessagesMessage? message}) { return DestinationUpdateResponseMessages(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationUpdateResponseMessages &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'DestinationUpdateResponseMessages(message: $message)'; } 
 }

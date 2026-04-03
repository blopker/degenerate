// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DestinationListResponseMessagesMessage {const DestinationListResponseMessagesMessage._(this.value);

factory DestinationListResponseMessagesMessage.fromJson(String json) { return switch (json) {
  'Successful request' => successfulRequest,
  _ => DestinationListResponseMessagesMessage._(json),
}; }

static const DestinationListResponseMessagesMessage successfulRequest = DestinationListResponseMessagesMessage._('Successful request');

static const List<DestinationListResponseMessagesMessage> values = [successfulRequest];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationListResponseMessagesMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DestinationListResponseMessagesMessage($value)'; } 
 }
@immutable final class DestinationListResponseMessages {const DestinationListResponseMessages({required this.message});

factory DestinationListResponseMessages.fromJson(Map<String, dynamic> json) { return DestinationListResponseMessages(
  message: DestinationListResponseMessagesMessage.fromJson(json['message'] as String),
); }

final DestinationListResponseMessagesMessage message;

Map<String, dynamic> toJson() { return {
  'message': message.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message'); } 
DestinationListResponseMessages copyWith({DestinationListResponseMessagesMessage? message}) { return DestinationListResponseMessages(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationListResponseMessages &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'DestinationListResponseMessages(message: $message)'; } 
 }

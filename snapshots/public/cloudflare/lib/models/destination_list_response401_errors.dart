// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DestinationListResponse401ErrorsMessage {const DestinationListResponse401ErrorsMessage._(this.value);

factory DestinationListResponse401ErrorsMessage.fromJson(String json) { return switch (json) {
  'Unauthorized' => unauthorized,
  _ => DestinationListResponse401ErrorsMessage._(json),
}; }

static const DestinationListResponse401ErrorsMessage unauthorized = DestinationListResponse401ErrorsMessage._('Unauthorized');

static const List<DestinationListResponse401ErrorsMessage> values = [unauthorized];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationListResponse401ErrorsMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DestinationListResponse401ErrorsMessage($value)'; } 
 }
@immutable final class DestinationListResponse401Errors {const DestinationListResponse401Errors({required this.message, this.detail, });

factory DestinationListResponse401Errors.fromJson(Map<String, dynamic> json) { return DestinationListResponse401Errors(
  detail: json['detail'] as String?,
  message: DestinationListResponse401ErrorsMessage.fromJson(json['message'] as String),
); }

final String? detail;

final DestinationListResponse401ErrorsMessage message;

Map<String, dynamic> toJson() { return {
  'detail': ?detail,
  'message': message.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message'); } 
DestinationListResponse401Errors copyWith({String Function()? detail, DestinationListResponse401ErrorsMessage? message, }) { return DestinationListResponse401Errors(
  detail: detail != null ? detail() : this.detail,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationListResponse401Errors &&
          detail == other.detail &&
          message == other.message; } 
@override int get hashCode { return Object.hash(detail, message); } 
@override String toString() { return 'DestinationListResponse401Errors(detail: $detail, message: $message)'; } 
 }

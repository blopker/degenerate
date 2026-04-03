// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TelemetryQueryResponse401ErrorsMessage {const TelemetryQueryResponse401ErrorsMessage._(this.value);

factory TelemetryQueryResponse401ErrorsMessage.fromJson(String json) { return switch (json) {
  'Unauthorized' => unauthorized,
  _ => TelemetryQueryResponse401ErrorsMessage._(json),
}; }

static const TelemetryQueryResponse401ErrorsMessage unauthorized = TelemetryQueryResponse401ErrorsMessage._('Unauthorized');

static const List<TelemetryQueryResponse401ErrorsMessage> values = [unauthorized];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TelemetryQueryResponse401ErrorsMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TelemetryQueryResponse401ErrorsMessage($value)'; } 
 }
@immutable final class TelemetryQueryResponse401Errors {const TelemetryQueryResponse401Errors({required this.message, this.detail, });

factory TelemetryQueryResponse401Errors.fromJson(Map<String, dynamic> json) { return TelemetryQueryResponse401Errors(
  detail: json['detail'] as String?,
  message: TelemetryQueryResponse401ErrorsMessage.fromJson(json['message'] as String),
); }

final String? detail;

final TelemetryQueryResponse401ErrorsMessage message;

Map<String, dynamic> toJson() { return {
  'detail': ?detail,
  'message': message.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message'); } 
TelemetryQueryResponse401Errors copyWith({String Function()? detail, TelemetryQueryResponse401ErrorsMessage? message, }) { return TelemetryQueryResponse401Errors(
  detail: detail != null ? detail() : this.detail,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TelemetryQueryResponse401Errors &&
          detail == other.detail &&
          message == other.message; } 
@override int get hashCode { return Object.hash(detail, message); } 
@override String toString() { return 'TelemetryQueryResponse401Errors(detail: $detail, message: $message)'; } 
 }

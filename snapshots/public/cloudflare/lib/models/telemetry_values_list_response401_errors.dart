// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TelemetryValuesListResponse401ErrorsMessage {const TelemetryValuesListResponse401ErrorsMessage._(this.value);

factory TelemetryValuesListResponse401ErrorsMessage.fromJson(String json) { return switch (json) {
  'Unauthorized' => unauthorized,
  _ => TelemetryValuesListResponse401ErrorsMessage._(json),
}; }

static const TelemetryValuesListResponse401ErrorsMessage unauthorized = TelemetryValuesListResponse401ErrorsMessage._('Unauthorized');

static const List<TelemetryValuesListResponse401ErrorsMessage> values = [unauthorized];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TelemetryValuesListResponse401ErrorsMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TelemetryValuesListResponse401ErrorsMessage($value)'; } 
 }
@immutable final class TelemetryValuesListResponse401Errors {const TelemetryValuesListResponse401Errors({required this.message, this.detail, });

factory TelemetryValuesListResponse401Errors.fromJson(Map<String, dynamic> json) { return TelemetryValuesListResponse401Errors(
  detail: json['detail'] as String?,
  message: TelemetryValuesListResponse401ErrorsMessage.fromJson(json['message'] as String),
); }

final String? detail;

final TelemetryValuesListResponse401ErrorsMessage message;

Map<String, dynamic> toJson() { return {
  'detail': ?detail,
  'message': message.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message'); } 
TelemetryValuesListResponse401Errors copyWith({String Function()? detail, TelemetryValuesListResponse401ErrorsMessage? message, }) { return TelemetryValuesListResponse401Errors(
  detail: detail != null ? detail() : this.detail,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TelemetryValuesListResponse401Errors &&
          detail == other.detail &&
          message == other.message; } 
@override int get hashCode { return Object.hash(detail, message); } 
@override String toString() { return 'TelemetryValuesListResponse401Errors(detail: $detail, message: $message)'; } 
 }

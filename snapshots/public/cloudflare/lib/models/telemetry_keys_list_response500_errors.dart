// GENERATED CODE - DO NOT MODIFY BY HAND

final class TelemetryKeysListResponse500ErrorsMessage {const TelemetryKeysListResponse500ErrorsMessage._(this.value);

factory TelemetryKeysListResponse500ErrorsMessage.fromJson(String json) { return switch (json) {
  'Internal error' => internalError,
  _ => TelemetryKeysListResponse500ErrorsMessage._(json),
}; }

static const TelemetryKeysListResponse500ErrorsMessage internalError = TelemetryKeysListResponse500ErrorsMessage._('Internal error');

static const List<TelemetryKeysListResponse500ErrorsMessage> values = [internalError];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TelemetryKeysListResponse500ErrorsMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TelemetryKeysListResponse500ErrorsMessage($value)'; } 
 }
final class TelemetryKeysListResponse500Errors {const TelemetryKeysListResponse500Errors({this.detail, required this.message, });

factory TelemetryKeysListResponse500Errors.fromJson(Map<String, dynamic> json) { return TelemetryKeysListResponse500Errors(
  detail: json['detail'] as String?,
  message: TelemetryKeysListResponse500ErrorsMessage.fromJson(json['message'] as String),
); }

final String? detail;

final TelemetryKeysListResponse500ErrorsMessage message;

Map<String, dynamic> toJson() { return {
  'detail': ?detail,
  'message': message.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message'); } 
TelemetryKeysListResponse500Errors copyWith({String Function()? detail, TelemetryKeysListResponse500ErrorsMessage? message, }) { return TelemetryKeysListResponse500Errors(
  detail: detail != null ? detail() : this.detail,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TelemetryKeysListResponse500Errors &&
          detail == other.detail &&
          message == other.message; } 
@override int get hashCode { return Object.hash(detail, message); } 
@override String toString() { return 'TelemetryKeysListResponse500Errors(detail: $detail, message: $message)'; } 
 }

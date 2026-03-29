// GENERATED CODE - DO NOT MODIFY BY HAND

final class TelemetryKeysListResponse401ErrorsMessage {const TelemetryKeysListResponse401ErrorsMessage._(this.value);

factory TelemetryKeysListResponse401ErrorsMessage.fromJson(String json) { return switch (json) {
  'Unauthorized' => unauthorized,
  _ => TelemetryKeysListResponse401ErrorsMessage._(json),
}; }

static const TelemetryKeysListResponse401ErrorsMessage unauthorized = TelemetryKeysListResponse401ErrorsMessage._('Unauthorized');

static const List<TelemetryKeysListResponse401ErrorsMessage> values = [unauthorized];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TelemetryKeysListResponse401ErrorsMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TelemetryKeysListResponse401ErrorsMessage($value)'; } 
 }
final class TelemetryKeysListResponse401Errors {const TelemetryKeysListResponse401Errors({this.detail, required this.message, });

factory TelemetryKeysListResponse401Errors.fromJson(Map<String, dynamic> json) { return TelemetryKeysListResponse401Errors(
  detail: json['detail'] as String?,
  message: TelemetryKeysListResponse401ErrorsMessage.fromJson(json['message'] as String),
); }

final String? detail;

final TelemetryKeysListResponse401ErrorsMessage message;

Map<String, dynamic> toJson() { return {
  'detail': ?detail,
  'message': message.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message'); } 
TelemetryKeysListResponse401Errors copyWith({String Function()? detail, TelemetryKeysListResponse401ErrorsMessage? message, }) { return TelemetryKeysListResponse401Errors(
  detail: detail != null ? detail() : this.detail,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TelemetryKeysListResponse401Errors &&
          detail == other.detail &&
          message == other.message; } 
@override int get hashCode { return Object.hash(detail, message); } 
@override String toString() { return 'TelemetryKeysListResponse401Errors(detail: $detail, message: $message)'; } 
 }

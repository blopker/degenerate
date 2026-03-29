// GENERATED CODE - DO NOT MODIFY BY HAND

final class DestinationCreateResponse401ErrorsMessage {const DestinationCreateResponse401ErrorsMessage._(this.value);

factory DestinationCreateResponse401ErrorsMessage.fromJson(String json) { return switch (json) {
  'Unauthorized' => unauthorized,
  _ => DestinationCreateResponse401ErrorsMessage._(json),
}; }

static const DestinationCreateResponse401ErrorsMessage unauthorized = DestinationCreateResponse401ErrorsMessage._('Unauthorized');

static const List<DestinationCreateResponse401ErrorsMessage> values = [unauthorized];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationCreateResponse401ErrorsMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DestinationCreateResponse401ErrorsMessage($value)'; } 
 }
final class DestinationCreateResponse401Errors {const DestinationCreateResponse401Errors({this.detail, required this.message, });

factory DestinationCreateResponse401Errors.fromJson(Map<String, dynamic> json) { return DestinationCreateResponse401Errors(
  detail: json['detail'] as String?,
  message: DestinationCreateResponse401ErrorsMessage.fromJson(json['message'] as String),
); }

final String? detail;

final DestinationCreateResponse401ErrorsMessage message;

Map<String, dynamic> toJson() { return {
  'detail': ?detail,
  'message': message.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message'); } 
DestinationCreateResponse401Errors copyWith({String Function()? detail, DestinationCreateResponse401ErrorsMessage? message, }) { return DestinationCreateResponse401Errors(
  detail: detail != null ? detail() : this.detail,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationCreateResponse401Errors &&
          detail == other.detail &&
          message == other.message; } 
@override int get hashCode { return Object.hash(detail, message); } 
@override String toString() { return 'DestinationCreateResponse401Errors(detail: $detail, message: $message)'; } 
 }

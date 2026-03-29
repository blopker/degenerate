// GENERATED CODE - DO NOT MODIFY BY HAND

final class DestinationUpdateResponse401ErrorsMessage {const DestinationUpdateResponse401ErrorsMessage._(this.value);

factory DestinationUpdateResponse401ErrorsMessage.fromJson(String json) { return switch (json) {
  'Unauthorized' => unauthorized,
  _ => DestinationUpdateResponse401ErrorsMessage._(json),
}; }

static const DestinationUpdateResponse401ErrorsMessage unauthorized = DestinationUpdateResponse401ErrorsMessage._('Unauthorized');

static const List<DestinationUpdateResponse401ErrorsMessage> values = [unauthorized];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationUpdateResponse401ErrorsMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DestinationUpdateResponse401ErrorsMessage($value)'; } 
 }
final class DestinationUpdateResponse401Errors {const DestinationUpdateResponse401Errors({this.detail, required this.message, });

factory DestinationUpdateResponse401Errors.fromJson(Map<String, dynamic> json) { return DestinationUpdateResponse401Errors(
  detail: json['detail'] as String?,
  message: DestinationUpdateResponse401ErrorsMessage.fromJson(json['message'] as String),
); }

final String? detail;

final DestinationUpdateResponse401ErrorsMessage message;

Map<String, dynamic> toJson() { return {
  'detail': ?detail,
  'message': message.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message'); } 
DestinationUpdateResponse401Errors copyWith({String Function()? detail, DestinationUpdateResponse401ErrorsMessage? message, }) { return DestinationUpdateResponse401Errors(
  detail: detail != null ? detail() : this.detail,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationUpdateResponse401Errors &&
          detail == other.detail &&
          message == other.message; } 
@override int get hashCode { return Object.hash(detail, message); } 
@override String toString() { return 'DestinationUpdateResponse401Errors(detail: $detail, message: $message)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

final class DestinationsDeleteResponse500ErrorsMessage {const DestinationsDeleteResponse500ErrorsMessage._(this.value);

factory DestinationsDeleteResponse500ErrorsMessage.fromJson(String json) { return switch (json) {
  'Internal error' => internalError,
  _ => DestinationsDeleteResponse500ErrorsMessage._(json),
}; }

static const DestinationsDeleteResponse500ErrorsMessage internalError = DestinationsDeleteResponse500ErrorsMessage._('Internal error');

static const List<DestinationsDeleteResponse500ErrorsMessage> values = [internalError];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationsDeleteResponse500ErrorsMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DestinationsDeleteResponse500ErrorsMessage($value)'; } 
 }
final class DestinationsDeleteResponse500Errors {const DestinationsDeleteResponse500Errors({this.detail, required this.message, });

factory DestinationsDeleteResponse500Errors.fromJson(Map<String, dynamic> json) { return DestinationsDeleteResponse500Errors(
  detail: json['detail'] as String?,
  message: DestinationsDeleteResponse500ErrorsMessage.fromJson(json['message'] as String),
); }

final String? detail;

final DestinationsDeleteResponse500ErrorsMessage message;

Map<String, dynamic> toJson() { return {
  'detail': ?detail,
  'message': message.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message'); } 
DestinationsDeleteResponse500Errors copyWith({String Function()? detail, DestinationsDeleteResponse500ErrorsMessage? message, }) { return DestinationsDeleteResponse500Errors(
  detail: detail != null ? detail() : this.detail,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationsDeleteResponse500Errors &&
          detail == other.detail &&
          message == other.message; } 
@override int get hashCode { return Object.hash(detail, message); } 
@override String toString() { return 'DestinationsDeleteResponse500Errors(detail: $detail, message: $message)'; } 
 }

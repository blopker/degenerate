// GENERATED CODE - DO NOT MODIFY BY HAND

final class DestinationUpdateResponse404ErrorsMessage {const DestinationUpdateResponse404ErrorsMessage._(this.value);

factory DestinationUpdateResponse404ErrorsMessage.fromJson(String json) { return switch (json) {
  'Not found' => notFound,
  _ => DestinationUpdateResponse404ErrorsMessage._(json),
}; }

static const DestinationUpdateResponse404ErrorsMessage notFound = DestinationUpdateResponse404ErrorsMessage._('Not found');

static const List<DestinationUpdateResponse404ErrorsMessage> values = [notFound];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationUpdateResponse404ErrorsMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DestinationUpdateResponse404ErrorsMessage($value)'; } 
 }
final class DestinationUpdateResponse404Errors {const DestinationUpdateResponse404Errors({this.detail, required this.message, });

factory DestinationUpdateResponse404Errors.fromJson(Map<String, dynamic> json) { return DestinationUpdateResponse404Errors(
  detail: json['detail'] as String?,
  message: DestinationUpdateResponse404ErrorsMessage.fromJson(json['message'] as String),
); }

final String? detail;

final DestinationUpdateResponse404ErrorsMessage message;

Map<String, dynamic> toJson() { return {
  'detail': ?detail,
  'message': message.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message'); } 
DestinationUpdateResponse404Errors copyWith({String Function()? detail, DestinationUpdateResponse404ErrorsMessage? message, }) { return DestinationUpdateResponse404Errors(
  detail: detail != null ? detail() : this.detail,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationUpdateResponse404Errors &&
          detail == other.detail &&
          message == other.message; } 
@override int get hashCode { return Object.hash(detail, message); } 
@override String toString() { return 'DestinationUpdateResponse404Errors(detail: $detail, message: $message)'; } 
 }

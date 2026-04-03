// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DestinationUpdateResponse500ErrorsMessage {const DestinationUpdateResponse500ErrorsMessage._(this.value);

factory DestinationUpdateResponse500ErrorsMessage.fromJson(String json) { return switch (json) {
  'Internal error' => internalError,
  _ => DestinationUpdateResponse500ErrorsMessage._(json),
}; }

static const DestinationUpdateResponse500ErrorsMessage internalError = DestinationUpdateResponse500ErrorsMessage._('Internal error');

static const List<DestinationUpdateResponse500ErrorsMessage> values = [internalError];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationUpdateResponse500ErrorsMessage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DestinationUpdateResponse500ErrorsMessage($value)'; } 
 }
@immutable final class DestinationUpdateResponse500Errors {const DestinationUpdateResponse500Errors({required this.message, this.detail, });

factory DestinationUpdateResponse500Errors.fromJson(Map<String, dynamic> json) { return DestinationUpdateResponse500Errors(
  detail: json['detail'] as String?,
  message: DestinationUpdateResponse500ErrorsMessage.fromJson(json['message'] as String),
); }

final String? detail;

final DestinationUpdateResponse500ErrorsMessage message;

Map<String, dynamic> toJson() { return {
  'detail': ?detail,
  'message': message.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message'); } 
DestinationUpdateResponse500Errors copyWith({String Function()? detail, DestinationUpdateResponse500ErrorsMessage? message, }) { return DestinationUpdateResponse500Errors(
  detail: detail != null ? detail() : this.detail,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationUpdateResponse500Errors &&
          detail == other.detail &&
          message == other.message; } 
@override int get hashCode { return Object.hash(detail, message); } 
@override String toString() { return 'DestinationUpdateResponse500Errors(detail: $detail, message: $message)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RealtimeMcpProtocolErrorType {const RealtimeMcpProtocolErrorType._(this.value);

factory RealtimeMcpProtocolErrorType.fromJson(String json) { return switch (json) {
  'protocol_error' => protocolError,
  _ => RealtimeMcpProtocolErrorType._(json),
}; }

static const RealtimeMcpProtocolErrorType protocolError = RealtimeMcpProtocolErrorType._('protocol_error');

static const List<RealtimeMcpProtocolErrorType> values = [protocolError];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeMcpProtocolErrorType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeMcpProtocolErrorType($value)'; } 
 }
@immutable final class RealtimeMcpProtocolError {const RealtimeMcpProtocolError({required this.type, required this.code, required this.message, });

factory RealtimeMcpProtocolError.fromJson(Map<String, dynamic> json) { return RealtimeMcpProtocolError(
  type: RealtimeMcpProtocolErrorType.fromJson(json['type'] as String),
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
); }

final RealtimeMcpProtocolErrorType type;

final int code;

final String message;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'code': code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
RealtimeMcpProtocolError copyWith({RealtimeMcpProtocolErrorType? type, int? code, String? message, }) { return RealtimeMcpProtocolError(
  type: type ?? this.type,
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeMcpProtocolError &&
          type == other.type &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(type, code, message); } 
@override String toString() { return 'RealtimeMcpProtocolError(type: $type, code: $code, message: $message)'; } 
 }

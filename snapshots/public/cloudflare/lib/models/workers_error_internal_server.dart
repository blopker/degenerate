// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Code indicating that an unknown internal server error has occurred.
@immutable final class WorkersErrorInternalServerCode {const WorkersErrorInternalServerCode._(this.value);

factory WorkersErrorInternalServerCode.fromJson(int json) { return switch (json) {
  10002 => $10002,
  _ => WorkersErrorInternalServerCode._(json),
}; }

static const WorkersErrorInternalServerCode $10002 = WorkersErrorInternalServerCode._(10002);

static const List<WorkersErrorInternalServerCode> values = [$10002];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersErrorInternalServerCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersErrorInternalServerCode($value)'; } 
 }
@immutable final class WorkersErrorInternalServer {const WorkersErrorInternalServer({required this.code, required this.message, });

factory WorkersErrorInternalServer.fromJson(Map<String, dynamic> json) { return WorkersErrorInternalServer(
  code: WorkersErrorInternalServerCode.fromJson((json['code'] as num).toInt()),
  message: json['message'] as String,
); }

/// Code indicating that an unknown internal server error has occurred.
final WorkersErrorInternalServerCode code;

/// Message explaining that an unknown error occurred and providing guidance for reporting the issue.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorInternalServer copyWith({WorkersErrorInternalServerCode? code, String? message, }) { return WorkersErrorInternalServer(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersErrorInternalServer &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersErrorInternalServer(code: $code, message: $message)'; } 
 }

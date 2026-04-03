// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Code indicating that the Worker does not exist.
@immutable final class WorkersErrorWorkerNotFoundCode {const WorkersErrorWorkerNotFoundCode._(this.value);

factory WorkersErrorWorkerNotFoundCode.fromJson(int json) { return switch (json) {
  10007 => $10007,
  _ => WorkersErrorWorkerNotFoundCode._(json),
}; }

static const WorkersErrorWorkerNotFoundCode $10007 = WorkersErrorWorkerNotFoundCode._(10007);

static const List<WorkersErrorWorkerNotFoundCode> values = [$10007];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersErrorWorkerNotFoundCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersErrorWorkerNotFoundCode($value)'; } 
 }
@immutable final class WorkersErrorWorkerNotFound {const WorkersErrorWorkerNotFound({required this.code, required this.message, });

factory WorkersErrorWorkerNotFound.fromJson(Map<String, dynamic> json) { return WorkersErrorWorkerNotFound(
  code: WorkersErrorWorkerNotFoundCode.fromJson((json['code'] as num).toInt()),
  message: json['message'] as String,
); }

/// Code indicating that the Worker does not exist.
final WorkersErrorWorkerNotFoundCode code;

/// Message explaining that the Worker was not found.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorWorkerNotFound copyWith({WorkersErrorWorkerNotFoundCode? code, String? message, }) { return WorkersErrorWorkerNotFound(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersErrorWorkerNotFound &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersErrorWorkerNotFound(code: $code, message: $message)'; } 
 }

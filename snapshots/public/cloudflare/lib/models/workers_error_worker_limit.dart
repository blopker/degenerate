// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Code indicating that the account has exceeded the maximum number of Workers allowed.
@immutable final class WorkersErrorWorkerLimitCode {const WorkersErrorWorkerLimitCode._(this.value);

factory WorkersErrorWorkerLimitCode.fromJson(int json) { return switch (json) {
  10037 => $10037,
  _ => WorkersErrorWorkerLimitCode._(json),
}; }

static const WorkersErrorWorkerLimitCode $10037 = WorkersErrorWorkerLimitCode._(10037);

static const List<WorkersErrorWorkerLimitCode> values = [$10037];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersErrorWorkerLimitCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersErrorWorkerLimitCode($value)'; } 
 }
@immutable final class WorkersErrorWorkerLimit {const WorkersErrorWorkerLimit({required this.code, required this.message, });

factory WorkersErrorWorkerLimit.fromJson(Map<String, dynamic> json) { return WorkersErrorWorkerLimit(
  code: WorkersErrorWorkerLimitCode.fromJson((json['code'] as num).toInt()),
  message: json['message'] as String,
); }

/// Code indicating that the account has exceeded the maximum number of Workers allowed.
final WorkersErrorWorkerLimitCode code;

/// Message explaining that the Worker limit has been exceeded and providing guidance.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorWorkerLimit copyWith({WorkersErrorWorkerLimitCode? code, String? message, }) { return WorkersErrorWorkerLimit(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersErrorWorkerLimit &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersErrorWorkerLimit(code: $code, message: $message)'; } 
 }

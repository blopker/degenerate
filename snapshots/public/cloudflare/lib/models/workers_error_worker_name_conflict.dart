// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Code indicating that a Worker with this name already exists.
@immutable final class WorkersErrorWorkerNameConflictCode {const WorkersErrorWorkerNameConflictCode._(this.value);

factory WorkersErrorWorkerNameConflictCode.fromJson(int json) { return switch (json) {
  10040 => $10040,
  _ => WorkersErrorWorkerNameConflictCode._(json),
}; }

static const WorkersErrorWorkerNameConflictCode $10040 = WorkersErrorWorkerNameConflictCode._(10040);

static const List<WorkersErrorWorkerNameConflictCode> values = [$10040];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersErrorWorkerNameConflictCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersErrorWorkerNameConflictCode($value)'; } 
 }
@immutable final class WorkersErrorWorkerNameConflict {const WorkersErrorWorkerNameConflict({required this.code, required this.message, });

factory WorkersErrorWorkerNameConflict.fromJson(Map<String, dynamic> json) { return WorkersErrorWorkerNameConflict(
  code: WorkersErrorWorkerNameConflictCode.fromJson((json['code'] as num).toInt()),
  message: json['message'] as String,
); }

/// Code indicating that a Worker with this name already exists.
final WorkersErrorWorkerNameConflictCode code;

/// Message explaining that the Worker name is already in use and suggesting to choose a different name.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorWorkerNameConflict copyWith({WorkersErrorWorkerNameConflictCode? code, String? message, }) { return WorkersErrorWorkerNameConflict(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersErrorWorkerNameConflict &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersErrorWorkerNameConflict(code: $code, message: $message)'; } 
 }

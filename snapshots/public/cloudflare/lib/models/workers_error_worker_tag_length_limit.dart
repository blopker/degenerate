// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Code indicating that the Worker has a tag that exceeds the maximum tag length.
@immutable final class WorkersErrorWorkerTagLengthLimitCode {const WorkersErrorWorkerTagLengthLimitCode._(this.value);

factory WorkersErrorWorkerTagLengthLimitCode.fromJson(int json) { return switch (json) {
  100102 => $100102,
  _ => WorkersErrorWorkerTagLengthLimitCode._(json),
}; }

static const WorkersErrorWorkerTagLengthLimitCode $100102 = WorkersErrorWorkerTagLengthLimitCode._(100102);

static const List<WorkersErrorWorkerTagLengthLimitCode> values = [$100102];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersErrorWorkerTagLengthLimitCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersErrorWorkerTagLengthLimitCode($value)'; } 
 }
@immutable final class WorkersErrorWorkerTagLengthLimit {const WorkersErrorWorkerTagLengthLimit({required this.code, required this.message, });

factory WorkersErrorWorkerTagLengthLimit.fromJson(Map<String, dynamic> json) { return WorkersErrorWorkerTagLengthLimit(
  code: WorkersErrorWorkerTagLengthLimitCode.fromJson((json['code'] as num).toInt()),
  message: json['message'] as String,
); }

/// Code indicating that the Worker has a tag that exceeds the maximum tag length.
final WorkersErrorWorkerTagLengthLimitCode code;

/// Message explaining why the tag is too long, including the maximum tag length.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorWorkerTagLengthLimit copyWith({WorkersErrorWorkerTagLengthLimitCode? code, String? message, }) { return WorkersErrorWorkerTagLengthLimit(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersErrorWorkerTagLengthLimit &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersErrorWorkerTagLengthLimit(code: $code, message: $message)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Code indicating that the Worker has a tag containing invalid characters.
@immutable final class WorkersErrorWorkerTagInvalidCode {const WorkersErrorWorkerTagInvalidCode._(this.value);

factory WorkersErrorWorkerTagInvalidCode.fromJson(int json) { return switch (json) {
  100134 => $100134,
  _ => WorkersErrorWorkerTagInvalidCode._(json),
}; }

static const WorkersErrorWorkerTagInvalidCode $100134 = WorkersErrorWorkerTagInvalidCode._(100134);

static const List<WorkersErrorWorkerTagInvalidCode> values = [$100134];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersErrorWorkerTagInvalidCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersErrorWorkerTagInvalidCode($value)'; } 
 }
@immutable final class WorkersErrorWorkerTagInvalid {const WorkersErrorWorkerTagInvalid({required this.code, required this.message, });

factory WorkersErrorWorkerTagInvalid.fromJson(Map<String, dynamic> json) { return WorkersErrorWorkerTagInvalid(
  code: WorkersErrorWorkerTagInvalidCode.fromJson((json['code'] as num).toInt()),
  message: json['message'] as String,
); }

/// Code indicating that the Worker has a tag containing invalid characters.
final WorkersErrorWorkerTagInvalidCode code;

/// Message explaining that tags cannot contain certain characters like comma or ampersand.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorWorkerTagInvalid copyWith({WorkersErrorWorkerTagInvalidCode? code, String? message, }) { return WorkersErrorWorkerTagInvalid(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersErrorWorkerTagInvalid &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersErrorWorkerTagInvalid(code: $code, message: $message)'; } 
 }

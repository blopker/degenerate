// GENERATED CODE - DO NOT MODIFY BY HAND

/// Code indicating that the Worker name is invalid.
final class WorkersErrorWorkerNameInvalidCode {const WorkersErrorWorkerNameInvalidCode._(this.value);

factory WorkersErrorWorkerNameInvalidCode.fromJson(int json) { return switch (json) {
  10016 => $10016,
  _ => WorkersErrorWorkerNameInvalidCode._(json),
}; }

static const WorkersErrorWorkerNameInvalidCode $10016 = WorkersErrorWorkerNameInvalidCode._(10016);

static const List<WorkersErrorWorkerNameInvalidCode> values = [$10016];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersErrorWorkerNameInvalidCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersErrorWorkerNameInvalidCode($value)'; } 
 }
final class WorkersErrorWorkerNameInvalid {const WorkersErrorWorkerNameInvalid({required this.code, required this.message, });

factory WorkersErrorWorkerNameInvalid.fromJson(Map<String, dynamic> json) { return WorkersErrorWorkerNameInvalid(
  code: WorkersErrorWorkerNameInvalidCode.fromJson((json['code'] as num).toInt()),
  message: json['message'] as String,
); }

/// Code indicating that the Worker name is invalid.
final WorkersErrorWorkerNameInvalidCode code;

/// Message explaining why the Worker name is invalid.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorWorkerNameInvalid copyWith({WorkersErrorWorkerNameInvalidCode? code, String? message, }) { return WorkersErrorWorkerNameInvalid(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersErrorWorkerNameInvalid &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersErrorWorkerNameInvalid(code: $code, message: $message)'; } 
 }

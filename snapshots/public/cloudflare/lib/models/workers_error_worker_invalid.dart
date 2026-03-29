// GENERATED CODE - DO NOT MODIFY BY HAND

/// Code indicating that the Worker request contains invalid data.
final class WorkersErrorWorkerInvalidCode {const WorkersErrorWorkerInvalidCode._(this.value);

factory WorkersErrorWorkerInvalidCode.fromJson(int json) { return switch (json) {
  10021 => $10021,
  _ => WorkersErrorWorkerInvalidCode._(json),
}; }

static const WorkersErrorWorkerInvalidCode $10021 = WorkersErrorWorkerInvalidCode._(10021);

static const List<WorkersErrorWorkerInvalidCode> values = [$10021];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersErrorWorkerInvalidCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersErrorWorkerInvalidCode($value)'; } 
 }
final class WorkersErrorWorkerInvalid {const WorkersErrorWorkerInvalid({required this.code, required this.message, });

factory WorkersErrorWorkerInvalid.fromJson(Map<String, dynamic> json) { return WorkersErrorWorkerInvalid(
  code: WorkersErrorWorkerInvalidCode.fromJson((json['code'] as num).toInt()),
  message: json['message'] as String,
); }

/// Code indicating that the Worker request contains invalid data.
final WorkersErrorWorkerInvalidCode code;

/// Message explaining why the Worker request is invalid, such as malformed JSON.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorWorkerInvalid copyWith({WorkersErrorWorkerInvalidCode? code, String? message, }) { return WorkersErrorWorkerInvalid(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersErrorWorkerInvalid &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersErrorWorkerInvalid(code: $code, message: $message)'; } 
 }

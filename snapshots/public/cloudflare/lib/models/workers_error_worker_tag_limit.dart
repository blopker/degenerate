// GENERATED CODE - DO NOT MODIFY BY HAND

/// Code indicating that the Worker has exceeded the maximum number of tags allowed.
final class WorkersErrorWorkerTagLimitCode {const WorkersErrorWorkerTagLimitCode._(this.value);

factory WorkersErrorWorkerTagLimitCode.fromJson(int json) { return switch (json) {
  100103 => $100103,
  _ => WorkersErrorWorkerTagLimitCode._(json),
}; }

static const WorkersErrorWorkerTagLimitCode $100103 = WorkersErrorWorkerTagLimitCode._(100103);

static const List<WorkersErrorWorkerTagLimitCode> values = [$100103];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersErrorWorkerTagLimitCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersErrorWorkerTagLimitCode($value)'; } 
 }
final class WorkersErrorWorkerTagLimit {const WorkersErrorWorkerTagLimit({required this.code, required this.message, });

factory WorkersErrorWorkerTagLimit.fromJson(Map<String, dynamic> json) { return WorkersErrorWorkerTagLimit(
  code: WorkersErrorWorkerTagLimitCode.fromJson((json['code'] as num).toInt()),
  message: json['message'] as String,
); }

/// Code indicating that the Worker has exceeded the maximum number of tags allowed.
final WorkersErrorWorkerTagLimitCode code;

/// Message explaining that the tag limit has been exceeded and suggesting to remove a tag.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorWorkerTagLimit copyWith({WorkersErrorWorkerTagLimitCode? code, String? message, }) { return WorkersErrorWorkerTagLimit(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersErrorWorkerTagLimit &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersErrorWorkerTagLimit(code: $code, message: $message)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

/// Code indicating that the Worker name is too long to be used with previews enabled.
final class WorkersErrorWorkerNamePreviewLengthLimitCode {const WorkersErrorWorkerNamePreviewLengthLimitCode._(this.value);

factory WorkersErrorWorkerNamePreviewLengthLimitCode.fromJson(int json) { return switch (json) {
  100315 => $100315,
  _ => WorkersErrorWorkerNamePreviewLengthLimitCode._(json),
}; }

static const WorkersErrorWorkerNamePreviewLengthLimitCode $100315 = WorkersErrorWorkerNamePreviewLengthLimitCode._(100315);

static const List<WorkersErrorWorkerNamePreviewLengthLimitCode> values = [$100315];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersErrorWorkerNamePreviewLengthLimitCode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersErrorWorkerNamePreviewLengthLimitCode($value)'; } 
 }
final class WorkersErrorWorkerNamePreviewLengthLimit {const WorkersErrorWorkerNamePreviewLengthLimit({required this.code, required this.message, });

factory WorkersErrorWorkerNamePreviewLengthLimit.fromJson(Map<String, dynamic> json) { return WorkersErrorWorkerNamePreviewLengthLimit(
  code: WorkersErrorWorkerNamePreviewLengthLimitCode.fromJson((json['code'] as num).toInt()),
  message: json['message'] as String,
); }

/// Code indicating that the Worker name is too long to be used with previews enabled.
final WorkersErrorWorkerNamePreviewLengthLimitCode code;

/// Message explaining that Worker names with previews enabled cannot exceed 54 characters.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code.toJson(),
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorWorkerNamePreviewLengthLimit copyWith({WorkersErrorWorkerNamePreviewLengthLimitCode? code, String? message, }) { return WorkersErrorWorkerNamePreviewLengthLimit(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersErrorWorkerNamePreviewLengthLimit &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersErrorWorkerNamePreviewLengthLimit(code: $code, message: $message)'; } 
 }

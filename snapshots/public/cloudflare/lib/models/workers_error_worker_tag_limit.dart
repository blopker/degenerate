// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersErrorWorkerTagLimit {const WorkersErrorWorkerTagLimit({required this.code, required this.message, });

factory WorkersErrorWorkerTagLimit.fromJson(Map<String, dynamic> json) { return WorkersErrorWorkerTagLimit(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
); }

/// Code indicating that the Worker has exceeded the maximum number of tags allowed.
final int code;

/// Message explaining that the tag limit has been exceeded and suggesting to remove a tag.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorWorkerTagLimit copyWith({int? code, String? message, }) { return WorkersErrorWorkerTagLimit(
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

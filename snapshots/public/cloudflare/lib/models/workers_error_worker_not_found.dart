// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersErrorWorkerNotFound {const WorkersErrorWorkerNotFound({required this.code, required this.message, });

factory WorkersErrorWorkerNotFound.fromJson(Map<String, dynamic> json) { return WorkersErrorWorkerNotFound(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
); }

/// Code indicating that the Worker does not exist.
final int code;

/// Message explaining that the Worker was not found.
final String message;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
WorkersErrorWorkerNotFound copyWith({int? code, String? message, }) { return WorkersErrorWorkerNotFound(
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

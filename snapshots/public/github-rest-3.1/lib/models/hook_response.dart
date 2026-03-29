// GENERATED CODE - DO NOT MODIFY BY HAND

final class HookResponse {const HookResponse({required this.code, required this.status, required this.message, });

factory HookResponse.fromJson(Map<String, dynamic> json) { return HookResponse(
  code: json['code'] != null ? (json['code'] as num).toInt() : null,
  status: json['status'] as String?,
  message: json['message'] as String?,
); }

final int? code;

final String? status;

final String? message;

Map<String, dynamic> toJson() { return {
  'code': ?code,
  'status': ?status,
  'message': ?message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('status') && json['status'] is String &&
      json.containsKey('message') && json['message'] is String; } 
HookResponse copyWith({int? Function()? code, String? Function()? status, String? Function()? message, }) { return HookResponse(
  code: code != null ? code() : this.code,
  status: status != null ? status() : this.status,
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HookResponse &&
          code == other.code &&
          status == other.status &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, status, message); } 
@override String toString() { return 'HookResponse(code: $code, status: $status, message: $message)'; } 
 }

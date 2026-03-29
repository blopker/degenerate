// GENERATED CODE - DO NOT MODIFY BY HAND

final class TeamsDevicesMessages2 {const TeamsDevicesMessages2({required this.code, required this.message, });

factory TeamsDevicesMessages2.fromJson(Map<String, dynamic> json) { return TeamsDevicesMessages2(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
); }

final int code;

final String message;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
TeamsDevicesMessages2 copyWith({int? code, String? message, }) { return TeamsDevicesMessages2(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesMessages2 &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'TeamsDevicesMessages2(code: $code, message: $message)'; } 
 }

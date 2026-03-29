// GENERATED CODE - DO NOT MODIFY BY HAND

final class BrapiPostContentResponse429Errors {const BrapiPostContentResponse429Errors({required this.code, required this.message, });

factory BrapiPostContentResponse429Errors.fromJson(Map<String, dynamic> json) { return BrapiPostContentResponse429Errors(
  code: (json['code'] as num).toDouble(),
  message: json['message'] as String,
); }

/// Error code
final double code;

/// Error Message
final String message;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
BrapiPostContentResponse429Errors copyWith({double? code, String? message, }) { return BrapiPostContentResponse429Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostContentResponse429Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'BrapiPostContentResponse429Errors(code: $code, message: $message)'; } 
 }

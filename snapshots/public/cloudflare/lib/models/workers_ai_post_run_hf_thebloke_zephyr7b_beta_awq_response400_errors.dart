// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersAiPostRunHfTheblokeZephyr7bBetaAwqResponse400Errors {const WorkersAiPostRunHfTheblokeZephyr7bBetaAwqResponse400Errors({required this.code, required this.message, });

factory WorkersAiPostRunHfTheblokeZephyr7bBetaAwqResponse400Errors.fromJson(Map<String, dynamic> json) { return WorkersAiPostRunHfTheblokeZephyr7bBetaAwqResponse400Errors(
  code: json['code'] as String,
  message: json['message'] as String,
); }

final String code;

final String message;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is String &&
      json.containsKey('message') && json['message'] is String; } 
WorkersAiPostRunHfTheblokeZephyr7bBetaAwqResponse400Errors copyWith({String? code, String? message, }) { return WorkersAiPostRunHfTheblokeZephyr7bBetaAwqResponse400Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiPostRunHfTheblokeZephyr7bBetaAwqResponse400Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorkersAiPostRunHfTheblokeZephyr7bBetaAwqResponse400Errors(code: $code, message: $message)'; } 
 }

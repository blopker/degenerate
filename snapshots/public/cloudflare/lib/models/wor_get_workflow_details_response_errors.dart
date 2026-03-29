// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorGetWorkflowDetailsResponseErrors {const WorGetWorkflowDetailsResponseErrors({required this.code, required this.message, });

factory WorGetWorkflowDetailsResponseErrors.fromJson(Map<String, dynamic> json) { return WorGetWorkflowDetailsResponseErrors(
  code: (json['code'] as num).toDouble(),
  message: json['message'] as String,
); }

final double code;

final String message;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
WorGetWorkflowDetailsResponseErrors copyWith({double? code, String? message, }) { return WorGetWorkflowDetailsResponseErrors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorGetWorkflowDetailsResponseErrors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'WorGetWorkflowDetailsResponseErrors(code: $code, message: $message)'; } 
 }

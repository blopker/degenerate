// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigListEvaluatorsResponse400Errors {const AigConfigListEvaluatorsResponse400Errors({required this.message});

factory AigConfigListEvaluatorsResponse400Errors.fromJson(Map<String, dynamic> json) { return AigConfigListEvaluatorsResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
AigConfigListEvaluatorsResponse400Errors copyWith({String? message}) { return AigConfigListEvaluatorsResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListEvaluatorsResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'AigConfigListEvaluatorsResponse400Errors(message: $message)'; } 
 }

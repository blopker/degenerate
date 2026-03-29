// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersAiListFinetunesResponse400Errors {const WorkersAiListFinetunesResponse400Errors({required this.message});

factory WorkersAiListFinetunesResponse400Errors.fromJson(Map<String, dynamic> json) { return WorkersAiListFinetunesResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
WorkersAiListFinetunesResponse400Errors copyWith({String? message}) { return WorkersAiListFinetunesResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersAiListFinetunesResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'WorkersAiListFinetunesResponse400Errors(message: $message)'; } 
 }

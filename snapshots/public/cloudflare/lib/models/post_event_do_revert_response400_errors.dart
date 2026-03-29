// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostEventDoRevertResponse400Errors {const PostEventDoRevertResponse400Errors({required this.message});

factory PostEventDoRevertResponse400Errors.fromJson(Map<String, dynamic> json) { return PostEventDoRevertResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
PostEventDoRevertResponse400Errors copyWith({String? message}) { return PostEventDoRevertResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventDoRevertResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'PostEventDoRevertResponse400Errors(message: $message)'; } 
 }

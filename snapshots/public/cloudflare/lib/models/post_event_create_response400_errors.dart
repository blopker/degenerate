// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostEventCreateResponse400Errors {const PostEventCreateResponse400Errors({required this.message});

factory PostEventCreateResponse400Errors.fromJson(Map<String, dynamic> json) { return PostEventCreateResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
PostEventCreateResponse400Errors copyWith({String? message}) { return PostEventCreateResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventCreateResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'PostEventCreateResponse400Errors(message: $message)'; } 
 }

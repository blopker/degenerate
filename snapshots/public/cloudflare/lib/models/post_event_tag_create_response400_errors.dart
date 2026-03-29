// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostEventTagCreateResponse400Errors {const PostEventTagCreateResponse400Errors({required this.message});

factory PostEventTagCreateResponse400Errors.fromJson(Map<String, dynamic> json) { return PostEventTagCreateResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
PostEventTagCreateResponse400Errors copyWith({String? message}) { return PostEventTagCreateResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventTagCreateResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'PostEventTagCreateResponse400Errors(message: $message)'; } 
 }

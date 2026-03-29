// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostDatasetUpdateResponse400Errors {const PostDatasetUpdateResponse400Errors({required this.message});

factory PostDatasetUpdateResponse400Errors.fromJson(Map<String, dynamic> json) { return PostDatasetUpdateResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
PostDatasetUpdateResponse400Errors copyWith({String? message}) { return PostDatasetUpdateResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetUpdateResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'PostDatasetUpdateResponse400Errors(message: $message)'; } 
 }

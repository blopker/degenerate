// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTagCategoryCreateResponse409Errors {const PostTagCategoryCreateResponse409Errors({required this.message});

factory PostTagCategoryCreateResponse409Errors.fromJson(Map<String, dynamic> json) { return PostTagCategoryCreateResponse409Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
PostTagCategoryCreateResponse409Errors copyWith({String? message}) { return PostTagCategoryCreateResponse409Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTagCategoryCreateResponse409Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'PostTagCategoryCreateResponse409Errors(message: $message)'; } 
 }

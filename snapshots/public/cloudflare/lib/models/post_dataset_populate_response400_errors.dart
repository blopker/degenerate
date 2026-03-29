// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostDatasetPopulateResponse400Errors {const PostDatasetPopulateResponse400Errors({required this.message});

factory PostDatasetPopulateResponse400Errors.fromJson(Map<String, dynamic> json) { return PostDatasetPopulateResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
PostDatasetPopulateResponse400Errors copyWith({String? message}) { return PostDatasetPopulateResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDatasetPopulateResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'PostDatasetPopulateResponse400Errors(message: $message)'; } 
 }

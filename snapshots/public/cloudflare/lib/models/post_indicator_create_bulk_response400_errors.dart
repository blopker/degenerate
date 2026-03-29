// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostIndicatorCreateBulkResponse400Errors {const PostIndicatorCreateBulkResponse400Errors({required this.message});

factory PostIndicatorCreateBulkResponse400Errors.fromJson(Map<String, dynamic> json) { return PostIndicatorCreateBulkResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
PostIndicatorCreateBulkResponse400Errors copyWith({String? message}) { return PostIndicatorCreateBulkResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIndicatorCreateBulkResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'PostIndicatorCreateBulkResponse400Errors(message: $message)'; } 
 }

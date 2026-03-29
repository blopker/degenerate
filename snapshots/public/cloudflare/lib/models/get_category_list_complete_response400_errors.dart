// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetCategoryListCompleteResponse400Errors {const GetCategoryListCompleteResponse400Errors({required this.message});

factory GetCategoryListCompleteResponse400Errors.fromJson(Map<String, dynamic> json) { return GetCategoryListCompleteResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
GetCategoryListCompleteResponse400Errors copyWith({String? message}) { return GetCategoryListCompleteResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetCategoryListCompleteResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'GetCategoryListCompleteResponse400Errors(message: $message)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetCategoryReadResponse400Errors {const GetCategoryReadResponse400Errors({required this.message});

factory GetCategoryReadResponse400Errors.fromJson(Map<String, dynamic> json) { return GetCategoryReadResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
GetCategoryReadResponse400Errors copyWith({String? message}) { return GetCategoryReadResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetCategoryReadResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'GetCategoryReadResponse400Errors(message: $message)'; } 
 }

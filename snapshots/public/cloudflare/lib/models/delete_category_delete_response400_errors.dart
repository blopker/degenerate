// GENERATED CODE - DO NOT MODIFY BY HAND

final class DeleteCategoryDeleteResponse400Errors {const DeleteCategoryDeleteResponse400Errors({required this.message});

factory DeleteCategoryDeleteResponse400Errors.fromJson(Map<String, dynamic> json) { return DeleteCategoryDeleteResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
DeleteCategoryDeleteResponse400Errors copyWith({String? message}) { return DeleteCategoryDeleteResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteCategoryDeleteResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'DeleteCategoryDeleteResponse400Errors(message: $message)'; } 
 }

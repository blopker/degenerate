// GENERATED CODE - DO NOT MODIFY BY HAND

final class DeleteEventTagDeleteResponse400Errors {const DeleteEventTagDeleteResponse400Errors({required this.message});

factory DeleteEventTagDeleteResponse400Errors.fromJson(Map<String, dynamic> json) { return DeleteEventTagDeleteResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
DeleteEventTagDeleteResponse400Errors copyWith({String? message}) { return DeleteEventTagDeleteResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteEventTagDeleteResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'DeleteEventTagDeleteResponse400Errors(message: $message)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

final class DeleteGroupMemberDeleteResponse400Errors {const DeleteGroupMemberDeleteResponse400Errors({required this.message});

factory DeleteGroupMemberDeleteResponse400Errors.fromJson(Map<String, dynamic> json) { return DeleteGroupMemberDeleteResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
DeleteGroupMemberDeleteResponse400Errors copyWith({String? message}) { return DeleteGroupMemberDeleteResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteGroupMemberDeleteResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'DeleteGroupMemberDeleteResponse400Errors(message: $message)'; } 
 }

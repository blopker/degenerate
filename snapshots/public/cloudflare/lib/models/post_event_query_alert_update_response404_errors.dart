// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostEventQueryAlertUpdateResponse404Errors {const PostEventQueryAlertUpdateResponse404Errors({required this.message});

factory PostEventQueryAlertUpdateResponse404Errors.fromJson(Map<String, dynamic> json) { return PostEventQueryAlertUpdateResponse404Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
PostEventQueryAlertUpdateResponse404Errors copyWith({String? message}) { return PostEventQueryAlertUpdateResponse404Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventQueryAlertUpdateResponse404Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'PostEventQueryAlertUpdateResponse404Errors(message: $message)'; } 
 }

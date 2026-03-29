// GENERATED CODE - DO NOT MODIFY BY HAND

final class DeleteIndicatorDeleteResponse404Errors {const DeleteIndicatorDeleteResponse404Errors({required this.message});

factory DeleteIndicatorDeleteResponse404Errors.fromJson(Map<String, dynamic> json) { return DeleteIndicatorDeleteResponse404Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
DeleteIndicatorDeleteResponse404Errors copyWith({String? message}) { return DeleteIndicatorDeleteResponse404Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteIndicatorDeleteResponse404Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'DeleteIndicatorDeleteResponse404Errors(message: $message)'; } 
 }

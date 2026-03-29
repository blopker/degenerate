// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetAttackerListResponse400Errors {const GetAttackerListResponse400Errors({required this.message});

factory GetAttackerListResponse400Errors.fromJson(Map<String, dynamic> json) { return GetAttackerListResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
GetAttackerListResponse400Errors copyWith({String? message}) { return GetAttackerListResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetAttackerListResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'GetAttackerListResponse400Errors(message: $message)'; } 
 }

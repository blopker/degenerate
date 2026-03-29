// GENERATED CODE - DO NOT MODIFY BY HAND

final class ListServersResponse400Errors {const ListServersResponse400Errors({required this.message});

factory ListServersResponse400Errors.fromJson(Map<String, dynamic> json) { return ListServersResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
ListServersResponse400Errors copyWith({String? message}) { return ListServersResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListServersResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'ListServersResponse400Errors(message: $message)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

final class Message {const Message({required this.message});

factory Message.fromJson(Map<String, dynamic> json) { return Message(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
Message copyWith({String? message}) { return Message(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Message &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'Message(message: $message)'; } 
 }

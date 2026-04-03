// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Represents an API notice or error detail.
@immutable final class Message {const Message({required this.message, this.code, });

factory Message.fromJson(Map<String, dynamic> json) { return Message(
  code: json['code'] != null ? (json['code'] as num).toInt() : null,
  message: json['message'] as String,
); }

/// Identifies the error or notice type.
final int? code;

/// Describes the error or notice.
final String message;

Map<String, dynamic> toJson() { return {
  'code': ?code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
Message copyWith({int Function()? code, String? message, }) { return Message(
  code: code != null ? code() : this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Message &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'Message(code: $code, message: $message)'; } 
 }

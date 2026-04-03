// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostEventQueryCreateResponse400Errors {const PostEventQueryCreateResponse400Errors({required this.message});

factory PostEventQueryCreateResponse400Errors.fromJson(Map<String, dynamic> json) { return PostEventQueryCreateResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
PostEventQueryCreateResponse400Errors copyWith({String? message}) { return PostEventQueryCreateResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventQueryCreateResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'PostEventQueryCreateResponse400Errors(message: $message)'; } 
 }

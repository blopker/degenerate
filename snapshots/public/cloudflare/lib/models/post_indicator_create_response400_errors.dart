// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIndicatorCreateResponse400Errors {const PostIndicatorCreateResponse400Errors({required this.message});

factory PostIndicatorCreateResponse400Errors.fromJson(Map<String, dynamic> json) { return PostIndicatorCreateResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
PostIndicatorCreateResponse400Errors copyWith({String? message}) { return PostIndicatorCreateResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIndicatorCreateResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'PostIndicatorCreateResponse400Errors(message: $message)'; } 
 }

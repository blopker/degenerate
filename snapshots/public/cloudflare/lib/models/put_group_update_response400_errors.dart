// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PutGroupUpdateResponse400Errors {const PutGroupUpdateResponse400Errors({required this.message});

factory PutGroupUpdateResponse400Errors.fromJson(Map<String, dynamic> json) { return PutGroupUpdateResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
PutGroupUpdateResponse400Errors copyWith({String? message}) { return PutGroupUpdateResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PutGroupUpdateResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'PutGroupUpdateResponse400Errors(message: $message)'; } 
 }

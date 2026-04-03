// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetEventAggregateResponse400Errors {const GetEventAggregateResponse400Errors({required this.message});

factory GetEventAggregateResponse400Errors.fromJson(Map<String, dynamic> json) { return GetEventAggregateResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
GetEventAggregateResponse400Errors copyWith({String? message}) { return GetEventAggregateResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetEventAggregateResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'GetEventAggregateResponse400Errors(message: $message)'; } 
 }

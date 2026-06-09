// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetSingleResponseDefault {const GetSingleResponseDefault({required this.message});

factory GetSingleResponseDefault.fromJson(Map<String, dynamic> json) { return GetSingleResponseDefault(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
GetSingleResponseDefault copyWith({String? message}) { return GetSingleResponseDefault(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetSingleResponseDefault &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'GetSingleResponseDefault(message: $message)'; } 
 }

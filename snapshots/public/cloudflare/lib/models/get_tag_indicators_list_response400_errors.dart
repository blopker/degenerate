// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetTagIndicatorsListResponse400Errors {const GetTagIndicatorsListResponse400Errors({required this.message});

factory GetTagIndicatorsListResponse400Errors.fromJson(Map<String, dynamic> json) { return GetTagIndicatorsListResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
GetTagIndicatorsListResponse400Errors copyWith({String? message}) { return GetTagIndicatorsListResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetTagIndicatorsListResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'GetTagIndicatorsListResponse400Errors(message: $message)'; } 
 }

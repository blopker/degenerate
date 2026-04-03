// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PatchIndicatorUpdateResponse404Errors {const PatchIndicatorUpdateResponse404Errors({required this.message});

factory PatchIndicatorUpdateResponse404Errors.fromJson(Map<String, dynamic> json) { return PatchIndicatorUpdateResponse404Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
PatchIndicatorUpdateResponse404Errors copyWith({String? message}) { return PatchIndicatorUpdateResponse404Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchIndicatorUpdateResponse404Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'PatchIndicatorUpdateResponse404Errors(message: $message)'; } 
 }

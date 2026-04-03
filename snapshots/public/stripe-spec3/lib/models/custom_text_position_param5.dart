// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CustomTextPositionParam5 {const CustomTextPositionParam5({required this.message});

factory CustomTextPositionParam5.fromJson(Map<String, dynamic> json) { return CustomTextPositionParam5(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
CustomTextPositionParam5 copyWith({String? message}) { return CustomTextPositionParam5(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomTextPositionParam5 &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'CustomTextPositionParam5(message: $message)'; } 
 }

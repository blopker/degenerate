// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAnnotationsOutagesResponse400Errors {const RadarGetAnnotationsOutagesResponse400Errors({required this.message});

factory RadarGetAnnotationsOutagesResponse400Errors.fromJson(Map<String, dynamic> json) { return RadarGetAnnotationsOutagesResponse400Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
RadarGetAnnotationsOutagesResponse400Errors copyWith({String? message}) { return RadarGetAnnotationsOutagesResponse400Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAnnotationsOutagesResponse400Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'RadarGetAnnotationsOutagesResponse400Errors(message: $message)'; } 
 }

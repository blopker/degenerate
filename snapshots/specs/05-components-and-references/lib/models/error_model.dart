// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ErrorModel {const ErrorModel({this.message});

factory ErrorModel.fromJson(Map<String, dynamic> json) { return ErrorModel(
  message: json['message'] as String?,
); }

final String? message;

Map<String, dynamic> toJson() { return {
  'message': ?message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'message'}.contains(key)); } 
ErrorModel copyWith({String Function()? message}) { return ErrorModel(
  message: message != null ? message() : this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ErrorModel &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'ErrorModel(message: $message)'; } 
 }

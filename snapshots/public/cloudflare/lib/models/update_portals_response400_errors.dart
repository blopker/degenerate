// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class UpdatePortalsResponse400Errors {const UpdatePortalsResponse400Errors({required this.code, required this.message, required this.path, });

factory UpdatePortalsResponse400Errors.fromJson(Map<String, dynamic> json) { return UpdatePortalsResponse400Errors(
  code: (json['code'] as num).toDouble(),
  message: json['message'] as String,
  path: (json['path'] as List<dynamic>).map((e) => e as String).toList(),
); }

final double code;

final String message;

final List<String> path;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
  'path': path,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String &&
      json.containsKey('path'); } 
UpdatePortalsResponse400Errors copyWith({double? code, String? message, List<String>? path, }) { return UpdatePortalsResponse400Errors(
  code: code ?? this.code,
  message: message ?? this.message,
  path: path ?? this.path,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdatePortalsResponse400Errors &&
          code == other.code &&
          message == other.message &&
          listEquals(path, other.path); } 
@override int get hashCode { return Object.hash(code, message, Object.hashAll(path)); } 
@override String toString() { return 'UpdatePortalsResponse400Errors(code: $code, message: $message, path: $path)'; } 
 }

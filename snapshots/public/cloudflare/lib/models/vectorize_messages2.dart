// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class VectorizeMessages2 {const VectorizeMessages2({required this.code, required this.message, });

factory VectorizeMessages2.fromJson(Map<String, dynamic> json) { return VectorizeMessages2(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
); }

final int code;

final String message;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
VectorizeMessages2 copyWith({int? code, String? message, }) { return VectorizeMessages2(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorizeMessages2 &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'VectorizeMessages2(code: $code, message: $message)'; } 
 }

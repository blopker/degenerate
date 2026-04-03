// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BrapiPostSnapshotResponse429Errors {const BrapiPostSnapshotResponse429Errors({required this.code, required this.message, });

factory BrapiPostSnapshotResponse429Errors.fromJson(Map<String, dynamic> json) { return BrapiPostSnapshotResponse429Errors(
  code: (json['code'] as num).toDouble(),
  message: json['message'] as String,
); }

/// Error code
final double code;

/// Error Message
final String message;

Map<String, dynamic> toJson() { return {
  'code': code,
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
BrapiPostSnapshotResponse429Errors copyWith({double? code, String? message, }) { return BrapiPostSnapshotResponse429Errors(
  code: code ?? this.code,
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostSnapshotResponse429Errors &&
          code == other.code &&
          message == other.message; } 
@override int get hashCode { return Object.hash(code, message); } 
@override String toString() { return 'BrapiPostSnapshotResponse429Errors(code: $code, message: $message)'; } 
 }

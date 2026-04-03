// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PatchTagCategoryUpdateResponse409Errors {const PatchTagCategoryUpdateResponse409Errors({required this.message});

factory PatchTagCategoryUpdateResponse409Errors.fromJson(Map<String, dynamic> json) { return PatchTagCategoryUpdateResponse409Errors(
  message: json['message'] as String,
); }

final String message;

Map<String, dynamic> toJson() { return {
  'message': message,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('message') && json['message'] is String; } 
PatchTagCategoryUpdateResponse409Errors copyWith({String? message}) { return PatchTagCategoryUpdateResponse409Errors(
  message: message ?? this.message,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchTagCategoryUpdateResponse409Errors &&
          message == other.message; } 
@override int get hashCode { return message.hashCode; } 
@override String toString() { return 'PatchTagCategoryUpdateResponse409Errors(message: $message)'; } 
 }

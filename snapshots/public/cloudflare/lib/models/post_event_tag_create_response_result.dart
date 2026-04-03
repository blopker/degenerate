// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostEventTagCreateResponseResult {const PostEventTagCreateResponseResult({required this.success});

factory PostEventTagCreateResponseResult.fromJson(Map<String, dynamic> json) { return PostEventTagCreateResponseResult(
  success: json['success'] as bool,
); }

final bool success;

Map<String, dynamic> toJson() { return {
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
PostEventTagCreateResponseResult copyWith({bool? success}) { return PostEventTagCreateResponseResult(
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventTagCreateResponseResult &&
          success == other.success; } 
@override int get hashCode { return success.hashCode; } 
@override String toString() { return 'PostEventTagCreateResponseResult(success: $success)'; } 
 }

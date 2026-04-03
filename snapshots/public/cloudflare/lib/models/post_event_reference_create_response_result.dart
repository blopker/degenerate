// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostEventReferenceCreateResponseResult {const PostEventReferenceCreateResponseResult({required this.success});

factory PostEventReferenceCreateResponseResult.fromJson(Map<String, dynamic> json) { return PostEventReferenceCreateResponseResult(
  success: json['success'] as bool,
); }

final bool success;

Map<String, dynamic> toJson() { return {
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('success') && json['success'] is bool; } 
PostEventReferenceCreateResponseResult copyWith({bool? success}) { return PostEventReferenceCreateResponseResult(
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventReferenceCreateResponseResult &&
          success == other.success; } 
@override int get hashCode { return success.hashCode; } 
@override String toString() { return 'PostEventReferenceCreateResponseResult(success: $success)'; } 
 }

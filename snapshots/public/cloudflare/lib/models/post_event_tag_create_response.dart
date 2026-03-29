// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_event_tag_create_response_result.dart';final class PostEventTagCreateResponse {const PostEventTagCreateResponse({required this.result, required this.success, });

factory PostEventTagCreateResponse.fromJson(Map<String, dynamic> json) { return PostEventTagCreateResponse(
  result: PostEventTagCreateResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final PostEventTagCreateResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
PostEventTagCreateResponse copyWith({PostEventTagCreateResponseResult? result, bool? success, }) { return PostEventTagCreateResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventTagCreateResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'PostEventTagCreateResponse(result: $result, success: $success)'; } 
 }

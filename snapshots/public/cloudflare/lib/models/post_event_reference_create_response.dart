// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_event_reference_create_response_result.dart';final class PostEventReferenceCreateResponse {const PostEventReferenceCreateResponse({required this.result, required this.success, });

factory PostEventReferenceCreateResponse.fromJson(Map<String, dynamic> json) { return PostEventReferenceCreateResponse(
  result: PostEventReferenceCreateResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final PostEventReferenceCreateResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
PostEventReferenceCreateResponse copyWith({PostEventReferenceCreateResponseResult? result, bool? success, }) { return PostEventReferenceCreateResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventReferenceCreateResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'PostEventReferenceCreateResponse(result: $result, success: $success)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_delete_bucket_sippy_config_response_result.dart';import 'r2_errors2.dart';@immutable final class R2DeleteBucketSippyConfigResponse {const R2DeleteBucketSippyConfigResponse({required this.errors, required this.messages, required this.result, required this.success, });

factory R2DeleteBucketSippyConfigResponse.fromJson(Map<String, dynamic> json) { return R2DeleteBucketSippyConfigResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => R2Errors2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => e as String).toList(),
  result: R2DeleteBucketSippyConfigResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final List<R2Errors2> errors;

final List<String> messages;

final R2DeleteBucketSippyConfigResponseResult result;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages,
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
R2DeleteBucketSippyConfigResponse copyWith({List<R2Errors2>? errors, List<String>? messages, R2DeleteBucketSippyConfigResponseResult? result, bool? success, }) { return R2DeleteBucketSippyConfigResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2DeleteBucketSippyConfigResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success); } 
@override String toString() { return 'R2DeleteBucketSippyConfigResponse(errors: $errors, messages: $messages, result: $result, success: $success)'; } 
 }

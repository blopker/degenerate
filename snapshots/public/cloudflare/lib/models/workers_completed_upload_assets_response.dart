// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_completed_upload_assets_response_result.dart';import 'workers_messages2.dart';@immutable final class WorkersCompletedUploadAssetsResponse {const WorkersCompletedUploadAssetsResponse({required this.errors, required this.messages, required this.success, this.result, });

factory WorkersCompletedUploadAssetsResponse.fromJson(Map<String, dynamic> json) { return WorkersCompletedUploadAssetsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => WorkersMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => WorkersMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? WorkersCompletedUploadAssetsResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<WorkersMessages2> errors;

final List<WorkersMessages2> messages;

/// Whether the API call was successful.
final bool success;

final WorkersCompletedUploadAssetsResponseResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
WorkersCompletedUploadAssetsResponse copyWith({List<WorkersMessages2>? errors, List<WorkersMessages2>? messages, bool? success, WorkersCompletedUploadAssetsResponseResult Function()? result, }) { return WorkersCompletedUploadAssetsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersCompletedUploadAssetsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'WorkersCompletedUploadAssetsResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }

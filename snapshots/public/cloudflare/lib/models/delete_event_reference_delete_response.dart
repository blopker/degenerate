// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_event_reference_delete_response_result.dart';@immutable final class DeleteEventReferenceDeleteResponse {const DeleteEventReferenceDeleteResponse({required this.result, required this.success, });

factory DeleteEventReferenceDeleteResponse.fromJson(Map<String, dynamic> json) { return DeleteEventReferenceDeleteResponse(
  result: DeleteEventReferenceDeleteResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final DeleteEventReferenceDeleteResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
DeleteEventReferenceDeleteResponse copyWith({DeleteEventReferenceDeleteResponseResult? result, bool? success, }) { return DeleteEventReferenceDeleteResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteEventReferenceDeleteResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'DeleteEventReferenceDeleteResponse(result: $result, success: $success)'; } 
 }

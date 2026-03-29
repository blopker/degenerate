// GENERATED CODE - DO NOT MODIFY BY HAND

import 'delete_portals_response_result.dart';final class DeletePortalsResponse {const DeletePortalsResponse({required this.result, required this.success, });

factory DeletePortalsResponse.fromJson(Map<String, dynamic> json) { return DeletePortalsResponse(
  result: DeletePortalsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final DeletePortalsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
DeletePortalsResponse copyWith({DeletePortalsResponseResult? result, bool? success, }) { return DeletePortalsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeletePortalsResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'DeletePortalsResponse(result: $result, success: $success)'; } 
 }

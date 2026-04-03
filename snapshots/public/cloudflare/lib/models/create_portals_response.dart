// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_portals_response_result.dart';@immutable final class CreatePortalsResponse {const CreatePortalsResponse({required this.result, required this.success, });

factory CreatePortalsResponse.fromJson(Map<String, dynamic> json) { return CreatePortalsResponse(
  result: CreatePortalsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final CreatePortalsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
CreatePortalsResponse copyWith({CreatePortalsResponseResult? result, bool? success, }) { return CreatePortalsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreatePortalsResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'CreatePortalsResponse(result: $result, success: $success)'; } 
 }

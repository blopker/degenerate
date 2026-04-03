// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_delete_providers_response_result.dart';@immutable final class AigConfigDeleteProvidersResponse {const AigConfigDeleteProvidersResponse({required this.result, required this.success, });

factory AigConfigDeleteProvidersResponse.fromJson(Map<String, dynamic> json) { return AigConfigDeleteProvidersResponse(
  result: AigConfigDeleteProvidersResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final AigConfigDeleteProvidersResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigDeleteProvidersResponse copyWith({AigConfigDeleteProvidersResponseResult? result, bool? success, }) { return AigConfigDeleteProvidersResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteProvidersResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AigConfigDeleteProvidersResponse(result: $result, success: $success)'; } 
 }

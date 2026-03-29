// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_tag_indicators_list_response404_errors.dart';final class GetTagIndicatorsListResponse404 {const GetTagIndicatorsListResponse404({required this.errors, required this.result, required this.success, });

factory GetTagIndicatorsListResponse404.fromJson(Map<String, dynamic> json) { return GetTagIndicatorsListResponse404(
  errors: (json['errors'] as List<dynamic>).map((e) => GetTagIndicatorsListResponse404Errors.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  success: json['success'] as bool,
); }

final List<GetTagIndicatorsListResponse404Errors> errors;

final Map<String,dynamic> result;

final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'result': result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
GetTagIndicatorsListResponse404 copyWith({List<GetTagIndicatorsListResponse404Errors>? errors, Map<String,dynamic>? result, bool? success, }) { return GetTagIndicatorsListResponse404(
  errors: errors ?? this.errors,
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetTagIndicatorsListResponse404 &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), result, success); } 
@override String toString() { return 'GetTagIndicatorsListResponse404(errors: $errors, result: $result, success: $success)'; } 
 }

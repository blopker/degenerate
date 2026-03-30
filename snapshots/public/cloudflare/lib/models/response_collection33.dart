// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_sharing_result_info.dart';import 'resource_sharing_v4error.dart';final class ResponseCollection33 {const ResponseCollection33({required this.errors, this.result, required this.success, this.resultInfo, });

factory ResponseCollection33.fromJson(Map<String, dynamic> json) { return ResponseCollection33(
  errors: (json['errors'] as List<dynamic>).map((e) => ResourceSharingV4error.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>?)?.map((e) => e).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? ResourceSharingResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<ResourceSharingV4error> errors;

final List<dynamic>? result;

/// Whether the API call was successful.
final bool success;

final ResourceSharingResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'result': ?result,
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
ResponseCollection33 copyWith({List<ResourceSharingV4error>? errors, List<dynamic>? Function()? result, bool? success, ResourceSharingResultInfo Function()? resultInfo, }) { return ResponseCollection33(
  errors: errors ?? this.errors,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResponseCollection33 &&
          listEquals(errors, other.errors) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(result ?? const []), success, resultInfo); } 
@override String toString() { return 'ResponseCollection33(errors: $errors, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }

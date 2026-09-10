// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_sharing_result_info.dart';import 'resource_sharing_share_object.dart';import 'resource_sharing_v4error.dart';@immutable final class ResourceSharingShareResponseCollection {const ResourceSharingShareResponseCollection({required this.errors, required this.success, this.result, this.resultInfo, });

factory ResourceSharingShareResponseCollection.fromJson(Map<String, dynamic> json) { return ResourceSharingShareResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => ResourceSharingV4error.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>?)?.map((e) => ResourceSharingShareObject.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? ResourceSharingResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<ResourceSharingV4error> errors;

final List<ResourceSharingShareObject>? result;

/// Whether the API call was successful.
final bool success;

final ResourceSharingResultInfo? resultInfo;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
  'success': success,
  if (resultInfo != null) 'result_info': resultInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
ResourceSharingShareResponseCollection copyWith({List<ResourceSharingV4error>? errors, List<ResourceSharingShareObject>? Function()? result, bool? success, ResourceSharingResultInfo? Function()? resultInfo, }) { return ResourceSharingShareResponseCollection(
  errors: errors ?? this.errors,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceSharingShareResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(result ?? const []), success, resultInfo); } 
@override String toString() { return 'ResourceSharingShareResponseCollection(errors: $errors, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }

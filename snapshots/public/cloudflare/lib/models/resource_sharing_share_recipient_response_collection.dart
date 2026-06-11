// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_sharing_result_info.dart';import 'resource_sharing_share_recipient_object.dart';import 'resource_sharing_v4error.dart';@immutable final class ResourceSharingShareRecipientResponseCollection {const ResourceSharingShareRecipientResponseCollection({required this.errors, required this.success, this.result, this.resultInfo, });

factory ResourceSharingShareRecipientResponseCollection.fromJson(Map<String, dynamic> json) { return ResourceSharingShareRecipientResponseCollection(
  errors: (json['errors'] as List<dynamic>).map((e) => ResourceSharingV4error.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as List<dynamic>?)?.map((e) => ResourceSharingShareRecipientObject.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  resultInfo: json['result_info'] != null ? ResourceSharingResultInfo.fromJson(json['result_info'] as Map<String, dynamic>) : null,
); }

final List<ResourceSharingV4error> errors;

final List<ResourceSharingShareRecipientObject>? result;

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
ResourceSharingShareRecipientResponseCollection copyWith({List<ResourceSharingV4error>? errors, List<ResourceSharingShareRecipientObject> Function()? result, bool? success, ResourceSharingResultInfo Function()? resultInfo, }) { return ResourceSharingShareRecipientResponseCollection(
  errors: errors ?? this.errors,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
  resultInfo: resultInfo != null ? resultInfo() : this.resultInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceSharingShareRecipientResponseCollection &&
          listEquals(errors, other.errors) &&
          listEquals(result, other.result) &&
          success == other.success &&
          resultInfo == other.resultInfo; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(result ?? const []), success, resultInfo); } 
@override String toString() { return 'ResourceSharingShareRecipientResponseCollection(errors: $errors, result: $result, success: $success, resultInfo: $resultInfo)'; } 
 }

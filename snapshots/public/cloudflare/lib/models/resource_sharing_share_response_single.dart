// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_sharing_share_object.dart';import 'resource_sharing_v4error.dart';@immutable final class ResourceSharingShareResponseSingle {const ResourceSharingShareResponseSingle({required this.errors, required this.success, this.result, });

factory ResourceSharingShareResponseSingle.fromJson(Map<String, dynamic> json) { return ResourceSharingShareResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => ResourceSharingV4error.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] != null ? ResourceSharingShareObject.fromJson(json['result'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final List<ResourceSharingV4error> errors;

final ResourceSharingShareObject? result;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  if (result != null) 'result': result?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
ResourceSharingShareResponseSingle copyWith({List<ResourceSharingV4error>? errors, ResourceSharingShareObject? Function()? result, bool? success, }) { return ResourceSharingShareResponseSingle(
  errors: errors ?? this.errors,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceSharingShareResponseSingle &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), result, success); } 
@override String toString() { return 'ResourceSharingShareResponseSingle(errors: $errors, result: $result, success: $success)'; } 
 }

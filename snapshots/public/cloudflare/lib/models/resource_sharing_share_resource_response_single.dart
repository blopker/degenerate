// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_sharing_share_resource_object.dart';import 'resource_sharing_v4error.dart';@immutable final class ResourceSharingShareResourceResponseSingle {const ResourceSharingShareResourceResponseSingle({required this.errors, required this.success, this.result, });

factory ResourceSharingShareResourceResponseSingle.fromJson(Map<String, dynamic> json) { return ResourceSharingShareResourceResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => ResourceSharingV4error.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] != null ? ResourceSharingShareResourceObject.fromJson(json['result'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final List<ResourceSharingV4error> errors;

final ResourceSharingShareResourceObject? result;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  if (result != null) 'result': result?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
ResourceSharingShareResourceResponseSingle copyWith({List<ResourceSharingV4error>? errors, ResourceSharingShareResourceObject? Function()? result, bool? success, }) { return ResourceSharingShareResourceResponseSingle(
  errors: errors ?? this.errors,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceSharingShareResourceResponseSingle &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), result, success); } 
@override String toString() { return 'ResourceSharingShareResourceResponseSingle(errors: $errors, result: $result, success: $success)'; } 
 }

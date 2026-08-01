// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'resource_sharing_share_recipient_object.dart';import 'resource_sharing_v4error.dart';@immutable final class ResourceSharingShareRecipientResponseSingle {const ResourceSharingShareRecipientResponseSingle({required this.errors, required this.success, this.result, });

factory ResourceSharingShareRecipientResponseSingle.fromJson(Map<String, dynamic> json) { return ResourceSharingShareRecipientResponseSingle(
  errors: (json['errors'] as List<dynamic>).map((e) => ResourceSharingV4error.fromJson(e as Map<String, dynamic>)).toList(),
  result: json['result'] != null ? ResourceSharingShareRecipientObject.fromJson(json['result'] as Map<String, dynamic>) : null,
  success: json['success'] as bool,
); }

final List<ResourceSharingV4error> errors;

final ResourceSharingShareRecipientObject? result;

/// Whether the API call was successful.
final bool success;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  if (result != null) 'result': result?.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('success') && json['success'] is bool; } 
ResourceSharingShareRecipientResponseSingle copyWith({List<ResourceSharingV4error>? errors, ResourceSharingShareRecipientObject? Function()? result, bool? success, }) { return ResourceSharingShareRecipientResponseSingle(
  errors: errors ?? this.errors,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ResourceSharingShareRecipientResponseSingle &&
          listEquals(errors, other.errors) &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), result, success); } 
@override String toString() { return 'ResourceSharingShareRecipientResponseSingle(errors: $errors, result: $result, success: $success)'; } 
 }

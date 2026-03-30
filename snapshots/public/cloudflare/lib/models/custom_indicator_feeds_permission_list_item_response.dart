// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_indicator_feeds_permission_list_item.dart';import 'custom_indicator_feeds_schemas_messages2.dart';final class CustomIndicatorFeedsPermissionListItemResponse {const CustomIndicatorFeedsPermissionListItemResponse({required this.errors, required this.messages, required this.success, this.result, });

factory CustomIndicatorFeedsPermissionListItemResponse.fromJson(Map<String, dynamic> json) { return CustomIndicatorFeedsPermissionListItemResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => CustomIndicatorFeedsSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CustomIndicatorFeedsSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: (json['result'] as List<dynamic>?)?.map((e) => CustomIndicatorFeedsPermissionListItem.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<CustomIndicatorFeedsSchemasMessages2> errors;

final List<CustomIndicatorFeedsSchemasMessages2> messages;

/// Whether the API call was successful.
final bool success;

final List<CustomIndicatorFeedsPermissionListItem>? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
CustomIndicatorFeedsPermissionListItemResponse copyWith({List<CustomIndicatorFeedsSchemasMessages2>? errors, List<CustomIndicatorFeedsSchemasMessages2>? messages, bool? success, List<CustomIndicatorFeedsPermissionListItem> Function()? result, }) { return CustomIndicatorFeedsPermissionListItemResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomIndicatorFeedsPermissionListItemResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, Object.hashAll(result ?? const [])); } 
@override String toString() { return 'CustomIndicatorFeedsPermissionListItemResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }

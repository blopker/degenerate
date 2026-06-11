// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_indicator_feeds_permissions_update.dart';import 'custom_indicator_feeds_schemas_messages2.dart';@immutable final class CustomIndicatorFeedsPermissionsResponse {const CustomIndicatorFeedsPermissionsResponse({required this.errors, required this.messages, required this.success, this.result, });

factory CustomIndicatorFeedsPermissionsResponse.fromJson(Map<String, dynamic> json) { return CustomIndicatorFeedsPermissionsResponse(
  errors: (json['errors'] as List<dynamic>).map((e) => CustomIndicatorFeedsSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => CustomIndicatorFeedsSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? CustomIndicatorFeedsPermissionsUpdate.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<CustomIndicatorFeedsSchemasMessages2> errors;

final List<CustomIndicatorFeedsSchemasMessages2> messages;

/// Whether the API call was successful.
final bool success;

final CustomIndicatorFeedsPermissionsUpdate? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
CustomIndicatorFeedsPermissionsResponse copyWith({List<CustomIndicatorFeedsSchemasMessages2>? errors, List<CustomIndicatorFeedsSchemasMessages2>? messages, bool? success, CustomIndicatorFeedsPermissionsUpdate Function()? result, }) { return CustomIndicatorFeedsPermissionsResponse(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomIndicatorFeedsPermissionsResponse &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'CustomIndicatorFeedsPermissionsResponse(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }

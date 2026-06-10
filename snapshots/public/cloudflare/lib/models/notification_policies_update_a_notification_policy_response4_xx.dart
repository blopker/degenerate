// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aaa_components_schemas_messages2.dart';import 'notification_policies_update_a_notification_policy_response4_xx_result.dart';@immutable final class NotificationPoliciesUpdateANotificationPolicyResponse4Xx {const NotificationPoliciesUpdateANotificationPolicyResponse4Xx({required this.errors, required this.messages, required this.success, this.result, });

factory NotificationPoliciesUpdateANotificationPolicyResponse4Xx.fromJson(Map<String, dynamic> json) { return NotificationPoliciesUpdateANotificationPolicyResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => AaaComponentsSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AaaComponentsSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? NotificationPoliciesUpdateANotificationPolicyResponse4XxResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<AaaComponentsSchemasMessages2> errors;

final List<AaaComponentsSchemasMessages2> messages;

/// Whether the API call was successful
final bool success;

final NotificationPoliciesUpdateANotificationPolicyResponse4XxResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
NotificationPoliciesUpdateANotificationPolicyResponse4Xx copyWith({List<AaaComponentsSchemasMessages2>? errors, List<AaaComponentsSchemasMessages2>? messages, bool? success, NotificationPoliciesUpdateANotificationPolicyResponse4XxResult Function()? result, }) { return NotificationPoliciesUpdateANotificationPolicyResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NotificationPoliciesUpdateANotificationPolicyResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'NotificationPoliciesUpdateANotificationPolicyResponse4Xx(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }

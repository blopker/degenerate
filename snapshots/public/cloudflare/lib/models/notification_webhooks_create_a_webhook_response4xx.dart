// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aaa_components_schemas_messages2.dart';import 'notification_webhooks_create_a_webhook_response4xx_result.dart';@immutable final class NotificationWebhooksCreateAWebhookResponse4xx {const NotificationWebhooksCreateAWebhookResponse4xx({required this.errors, required this.messages, required this.success, this.result, });

factory NotificationWebhooksCreateAWebhookResponse4xx.fromJson(Map<String, dynamic> json) { return NotificationWebhooksCreateAWebhookResponse4xx(
  errors: (json['errors'] as List<dynamic>).map((e) => AaaComponentsSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => AaaComponentsSchemasMessages2.fromJson(e as Map<String, dynamic>)).toList(),
  success: json['success'] as bool,
  result: json['result'] != null ? NotificationWebhooksCreateAWebhookResponse4xxResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final List<AaaComponentsSchemasMessages2> errors;

final List<AaaComponentsSchemasMessages2> messages;

/// Whether the API call was successful
final bool success;

final NotificationWebhooksCreateAWebhookResponse4xxResult? result;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'success': success,
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('success') && json['success'] is bool; } 
NotificationWebhooksCreateAWebhookResponse4xx copyWith({List<AaaComponentsSchemasMessages2>? errors, List<AaaComponentsSchemasMessages2>? messages, bool? success, NotificationWebhooksCreateAWebhookResponse4xxResult? Function()? result, }) { return NotificationWebhooksCreateAWebhookResponse4xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  success: success ?? this.success,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NotificationWebhooksCreateAWebhookResponse4xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          success == other.success &&
          result == other.result; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), success, result); } 
@override String toString() { return 'NotificationWebhooksCreateAWebhookResponse4xx(errors: $errors, messages: $messages, success: $success, result: $result)'; } 
 }

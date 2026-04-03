// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages5.dart';import 'schemas_identifier.dart';@immutable final class UserSubscriptionDeleteUserSubscriptionResponse4Xx {const UserSubscriptionDeleteUserSubscriptionResponse4Xx({required this.errors, required this.messages, required this.result, required this.success, this.subscriptionId, });

factory UserSubscriptionDeleteUserSubscriptionResponse4Xx.fromJson(Map<String, dynamic> json) { return UserSubscriptionDeleteUserSubscriptionResponse4Xx(
  errors: (json['errors'] as List<dynamic>).map((e) => Messages5.fromJson(e as Map<String, dynamic>)).toList(),
  messages: (json['messages'] as List<dynamic>).map((e) => Messages5.fromJson(e as Map<String, dynamic>)).toList(),
  result: (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  success: json['success'] as bool,
  subscriptionId: json['subscription_id'] != null ? SchemasIdentifier.fromJson(json['subscription_id'] as String) : null,
); }

final List<Messages5> errors;

final List<Messages5> messages;

final Map<String,dynamic>? result;

/// Whether the API call was successful
final bool success;

/// Subscription identifier tag.
final SchemasIdentifier? subscriptionId;

Map<String, dynamic> toJson() { return {
  'errors': errors.map((e) => e.toJson()).toList(),
  'messages': messages.map((e) => e.toJson()).toList(),
  'result': ?result,
  'success': success,
  if (subscriptionId != null) 'subscription_id': subscriptionId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('errors') &&
      json.containsKey('messages') &&
      json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
UserSubscriptionDeleteUserSubscriptionResponse4Xx copyWith({List<Messages5>? errors, List<Messages5>? messages, Map<String, dynamic>? Function()? result, bool? success, SchemasIdentifier Function()? subscriptionId, }) { return UserSubscriptionDeleteUserSubscriptionResponse4Xx(
  errors: errors ?? this.errors,
  messages: messages ?? this.messages,
  result: result != null ? result() : this.result,
  success: success ?? this.success,
  subscriptionId: subscriptionId != null ? subscriptionId() : this.subscriptionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserSubscriptionDeleteUserSubscriptionResponse4Xx &&
          listEquals(errors, other.errors) &&
          listEquals(messages, other.messages) &&
          result == other.result &&
          success == other.success &&
          subscriptionId == other.subscriptionId; } 
@override int get hashCode { return Object.hash(Object.hashAll(errors), Object.hashAll(messages), result, success, subscriptionId); } 
@override String toString() { return 'UserSubscriptionDeleteUserSubscriptionResponse4Xx(errors: $errors, messages: $messages, result: $result, success: $success, subscriptionId: $subscriptionId)'; } 
 }

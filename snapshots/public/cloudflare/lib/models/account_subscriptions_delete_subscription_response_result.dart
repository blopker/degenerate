// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'schemas_identifier.dart';@immutable final class AccountSubscriptionsDeleteSubscriptionResponseResult {const AccountSubscriptionsDeleteSubscriptionResponseResult({this.subscriptionId});

factory AccountSubscriptionsDeleteSubscriptionResponseResult.fromJson(Map<String, dynamic> json) { return AccountSubscriptionsDeleteSubscriptionResponseResult(
  subscriptionId: json['subscription_id'] != null ? SchemasIdentifier.fromJson(json['subscription_id'] as String) : null,
); }

/// Subscription identifier tag.
final SchemasIdentifier? subscriptionId;

Map<String, dynamic> toJson() { return {
  if (subscriptionId != null) 'subscription_id': subscriptionId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'subscription_id'}.contains(key)); } 
AccountSubscriptionsDeleteSubscriptionResponseResult copyWith({SchemasIdentifier Function()? subscriptionId}) { return AccountSubscriptionsDeleteSubscriptionResponseResult(
  subscriptionId: subscriptionId != null ? subscriptionId() : this.subscriptionId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountSubscriptionsDeleteSubscriptionResponseResult &&
          subscriptionId == other.subscriptionId; } 
@override int get hashCode { return subscriptionId.hashCode; } 
@override String toString() { return 'AccountSubscriptionsDeleteSubscriptionResponseResult(subscriptionId: $subscriptionId)'; } 
 }

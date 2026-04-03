// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_subscriptions_subscription_migrate_request_billing_mode.dart';@immutable final class PostSubscriptionsSubscriptionMigrateRequest {const PostSubscriptionsSubscriptionMigrateRequest({required this.billingMode, this.expand, });

factory PostSubscriptionsSubscriptionMigrateRequest.fromJson(Map<String, dynamic> json) { return PostSubscriptionsSubscriptionMigrateRequest(
  billingMode: PostSubscriptionsSubscriptionMigrateRequestBillingMode.fromJson(json['billing_mode'] as Map<String, dynamic>),
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Controls how prorations and invoices for subscriptions are calculated and orchestrated.
final PostSubscriptionsSubscriptionMigrateRequestBillingMode billingMode;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  'billing_mode': billingMode.toJson(),
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('billing_mode'); } 
PostSubscriptionsSubscriptionMigrateRequest copyWith({PostSubscriptionsSubscriptionMigrateRequestBillingMode? billingMode, List<String> Function()? expand, }) { return PostSubscriptionsSubscriptionMigrateRequest(
  billingMode: billingMode ?? this.billingMode,
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSubscriptionsSubscriptionMigrateRequest &&
          billingMode == other.billingMode &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hash(billingMode, Object.hashAll(expand ?? const [])); } 
@override String toString() { return 'PostSubscriptionsSubscriptionMigrateRequest(billingMode: $billingMode, expand: $expand)'; } 
 }

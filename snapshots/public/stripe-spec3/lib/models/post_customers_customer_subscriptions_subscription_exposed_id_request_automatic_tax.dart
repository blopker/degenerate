// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_customers_customer_subscriptions_subscription_exposed_id_request_automatic_tax_liability.dart';/// Automatic tax settings for this subscription. We recommend you only include this parameter when the existing value is being changed.
final class PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAutomaticTax {const PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAutomaticTax({required this.enabled, this.liability, });

factory PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAutomaticTax.fromJson(Map<String, dynamic> json) { return PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAutomaticTax(
  enabled: json['enabled'] as bool,
  liability: json['liability'] != null ? PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAutomaticTaxLiability.fromJson(json['liability'] as Map<String, dynamic>) : null,
); }

final bool enabled;

final PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAutomaticTaxLiability? liability;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (liability != null) 'liability': liability?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAutomaticTax copyWith({bool? enabled, PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAutomaticTaxLiability Function()? liability, }) { return PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAutomaticTax(
  enabled: enabled ?? this.enabled,
  liability: liability != null ? liability() : this.liability,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAutomaticTax &&
          enabled == other.enabled &&
          liability == other.liability; } 
@override int get hashCode { return Object.hash(enabled, liability); } 
@override String toString() { return 'PostCustomersCustomerSubscriptionsSubscriptionExposedIdRequestAutomaticTax(enabled: $enabled, liability: $liability)'; } 
 }

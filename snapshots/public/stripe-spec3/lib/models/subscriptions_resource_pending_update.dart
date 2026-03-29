// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'subscription_item.dart';/// Pending Updates store the changes pending from a previous update that will be applied
/// to the Subscription upon successful payment.
final class SubscriptionsResourcePendingUpdate {const SubscriptionsResourcePendingUpdate({this.billingCycleAnchor, required this.expiresAt, this.subscriptionItems, this.trialEnd, this.trialFromPlan, });

factory SubscriptionsResourcePendingUpdate.fromJson(Map<String, dynamic> json) { return SubscriptionsResourcePendingUpdate(
  billingCycleAnchor: json['billing_cycle_anchor'] != null ? (json['billing_cycle_anchor'] as num).toInt() : null,
  expiresAt: (json['expires_at'] as num).toInt(),
  subscriptionItems: (json['subscription_items'] as List<dynamic>?)?.map((e) => SubscriptionItem.fromJson(e as Map<String, dynamic>)).toList(),
  trialEnd: json['trial_end'] != null ? (json['trial_end'] as num).toInt() : null,
  trialFromPlan: json['trial_from_plan'] as bool?,
); }

/// If the update is applied, determines the date of the first full invoice, and, for plans with `month` or `year` intervals, the day of the month for subsequent invoices. The timestamp is in UTC format.
final int? billingCycleAnchor;

/// The point after which the changes reflected by this update will be discarded and no longer applied.
final int expiresAt;

/// List of subscription items, each with an attached plan, that will be set if the update is applied.
final List<SubscriptionItem>? subscriptionItems;

/// Unix timestamp representing the end of the trial period the customer will get before being charged for the first time, if the update is applied.
final int? trialEnd;

/// Indicates if a plan's `trial_period_days` should be applied to the subscription. Setting `trial_end` per subscription is preferred, and this defaults to `false`. Setting this flag to `true` together with `trial_end` is not allowed. See [Using trial periods on subscriptions](https://docs.stripe.com/billing/subscriptions/trials) to learn more.
final bool? trialFromPlan;

Map<String, dynamic> toJson() { return {
  'billing_cycle_anchor': ?billingCycleAnchor,
  'expires_at': expiresAt,
  if (subscriptionItems != null) 'subscription_items': subscriptionItems?.map((e) => e.toJson()).toList(),
  'trial_end': ?trialEnd,
  'trial_from_plan': ?trialFromPlan,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('expires_at') && json['expires_at'] is num; } 
SubscriptionsResourcePendingUpdate copyWith({int? Function()? billingCycleAnchor, int? expiresAt, List<SubscriptionItem>? Function()? subscriptionItems, int? Function()? trialEnd, bool? Function()? trialFromPlan, }) { return SubscriptionsResourcePendingUpdate(
  billingCycleAnchor: billingCycleAnchor != null ? billingCycleAnchor() : this.billingCycleAnchor,
  expiresAt: expiresAt ?? this.expiresAt,
  subscriptionItems: subscriptionItems != null ? subscriptionItems() : this.subscriptionItems,
  trialEnd: trialEnd != null ? trialEnd() : this.trialEnd,
  trialFromPlan: trialFromPlan != null ? trialFromPlan() : this.trialFromPlan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionsResourcePendingUpdate &&
          billingCycleAnchor == other.billingCycleAnchor &&
          expiresAt == other.expiresAt &&
          listEquals(subscriptionItems, other.subscriptionItems) &&
          trialEnd == other.trialEnd &&
          trialFromPlan == other.trialFromPlan; } 
@override int get hashCode { return Object.hash(billingCycleAnchor, expiresAt, Object.hashAll(subscriptionItems ?? const []), trialEnd, trialFromPlan); } 
@override String toString() { return 'SubscriptionsResourcePendingUpdate(billingCycleAnchor: $billingCycleAnchor, expiresAt: $expiresAt, subscriptionItems: $subscriptionItems, trialEnd: $trialEnd, trialFromPlan: $trialFromPlan)'; } 
 }

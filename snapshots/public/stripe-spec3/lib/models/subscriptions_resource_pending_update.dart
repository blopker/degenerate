// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'subscription_item.dart';/// Pending Updates store the changes pending from a previous update that will be applied
/// to the Subscription upon successful payment.
@immutable final class SubscriptionsResourcePendingUpdate {const SubscriptionsResourcePendingUpdate({required this.expiresAt, this.billingCycleAnchor = const Omittable.absent(), this.subscriptionItems = const Omittable.absent(), this.trialEnd = const Omittable.absent(), this.trialFromPlan = const Omittable.absent(), });

factory SubscriptionsResourcePendingUpdate.fromJson(Map<String, dynamic> json) { return SubscriptionsResourcePendingUpdate(
  billingCycleAnchor: json.containsKey('billing_cycle_anchor') ? Omittable(json['billing_cycle_anchor'] != null ? (json['billing_cycle_anchor'] as num).toInt() : null) : const Omittable.absent(),
  expiresAt: (json['expires_at'] as num).toInt(),
  subscriptionItems: json.containsKey('subscription_items') ? Omittable((json['subscription_items'] as List<dynamic>?)?.map((e) => SubscriptionItem.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  trialEnd: json.containsKey('trial_end') ? Omittable(json['trial_end'] != null ? (json['trial_end'] as num).toInt() : null) : const Omittable.absent(),
  trialFromPlan: json.containsKey('trial_from_plan') ? Omittable(json['trial_from_plan'] as bool?) : const Omittable.absent(),
); }

/// If the update is applied, determines the date of the first full invoice, and, for plans with `month` or `year` intervals, the day of the month for subsequent invoices. The timestamp is in UTC format.
final Omittable<int?> billingCycleAnchor;

/// The point after which the changes reflected by this update will be discarded and no longer applied.
final int expiresAt;

/// List of subscription items, each with an attached plan, that will be set if the update is applied.
final Omittable<List<SubscriptionItem>?> subscriptionItems;

/// Unix timestamp representing the end of the trial period the customer will get before being charged for the first time, if the update is applied.
final Omittable<int?> trialEnd;

/// Indicates if a plan's `trial_period_days` should be applied to the subscription. Setting `trial_end` per subscription is preferred, and this defaults to `false`. Setting this flag to `true` together with `trial_end` is not allowed. See [Using trial periods on subscriptions](https://docs.stripe.com/billing/subscriptions/trials) to learn more.
final Omittable<bool?> trialFromPlan;

Map<String, dynamic> toJson() { return {
  if (billingCycleAnchor.isPresent) 'billing_cycle_anchor': billingCycleAnchor.value,
  'expires_at': expiresAt,
  if (subscriptionItems.isPresent) 'subscription_items': subscriptionItems.value?.map((e) => e.toJson()).toList(),
  if (trialEnd.isPresent) 'trial_end': trialEnd.value,
  if (trialFromPlan.isPresent) 'trial_from_plan': trialFromPlan.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('expires_at') && json['expires_at'] is num; } 
SubscriptionsResourcePendingUpdate copyWith({Omittable<int?>? billingCycleAnchor, int? expiresAt, Omittable<List<SubscriptionItem>?>? subscriptionItems, Omittable<int?>? trialEnd, Omittable<bool?>? trialFromPlan, }) { return SubscriptionsResourcePendingUpdate(
  billingCycleAnchor: billingCycleAnchor ?? this.billingCycleAnchor,
  expiresAt: expiresAt ?? this.expiresAt,
  subscriptionItems: subscriptionItems ?? this.subscriptionItems,
  trialEnd: trialEnd ?? this.trialEnd,
  trialFromPlan: trialFromPlan ?? this.trialFromPlan,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionsResourcePendingUpdate &&
          billingCycleAnchor == other.billingCycleAnchor &&
          expiresAt == other.expiresAt &&
          subscriptionItems.isPresent == other.subscriptionItems.isPresent &&
          listEquals(subscriptionItems.value, other.subscriptionItems.value) &&
          trialEnd == other.trialEnd &&
          trialFromPlan == other.trialFromPlan; } 
@override int get hashCode { return Object.hash(billingCycleAnchor, expiresAt, Object.hashAll(subscriptionItems.value ?? const []), trialEnd, trialFromPlan); } 
@override String toString() { return 'SubscriptionsResourcePendingUpdate(billingCycleAnchor: $billingCycleAnchor, expiresAt: $expiresAt, subscriptionItems: $subscriptionItems, trialEnd: $trialEnd, trialFromPlan: $trialFromPlan)'; } 
 }

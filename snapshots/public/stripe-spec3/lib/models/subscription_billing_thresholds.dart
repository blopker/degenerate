// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class SubscriptionBillingThresholds {const SubscriptionBillingThresholds({this.amountGte = const Omittable.absent(), this.resetBillingCycleAnchor = const Omittable.absent(), });

factory SubscriptionBillingThresholds.fromJson(Map<String, dynamic> json) { return SubscriptionBillingThresholds(
  amountGte: json.containsKey('amount_gte') ? Omittable(json['amount_gte'] != null ? (json['amount_gte'] as num).toInt() : null) : const Omittable.absent(),
  resetBillingCycleAnchor: json.containsKey('reset_billing_cycle_anchor') ? Omittable(json['reset_billing_cycle_anchor'] as bool?) : const Omittable.absent(),
); }

/// Monetary threshold that triggers the subscription to create an invoice
final Omittable<int?> amountGte;

/// Indicates if the `billing_cycle_anchor` should be reset when a threshold is reached. If true, `billing_cycle_anchor` will be updated to the date/time the threshold was last reached; otherwise, the value will remain unchanged. This value may not be `true` if the subscription contains items with plans that have `aggregate_usage=last_ever`.
final Omittable<bool?> resetBillingCycleAnchor;

Map<String, dynamic> toJson() { return {
  if (amountGte.isPresent) 'amount_gte': amountGte.value,
  if (resetBillingCycleAnchor.isPresent) 'reset_billing_cycle_anchor': resetBillingCycleAnchor.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount_gte', 'reset_billing_cycle_anchor'}.contains(key)); } 
SubscriptionBillingThresholds copyWith({Omittable<int?>? amountGte, Omittable<bool?>? resetBillingCycleAnchor, }) { return SubscriptionBillingThresholds(
  amountGte: amountGte ?? this.amountGte,
  resetBillingCycleAnchor: resetBillingCycleAnchor ?? this.resetBillingCycleAnchor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionBillingThresholds &&
          amountGte == other.amountGte &&
          resetBillingCycleAnchor == other.resetBillingCycleAnchor; } 
@override int get hashCode { return Object.hash(amountGte, resetBillingCycleAnchor); } 
@override String toString() { return 'SubscriptionBillingThresholds(amountGte: $amountGte, resetBillingCycleAnchor: $resetBillingCycleAnchor)'; } 
 }

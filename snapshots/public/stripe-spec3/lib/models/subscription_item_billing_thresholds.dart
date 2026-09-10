// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class SubscriptionItemBillingThresholds {const SubscriptionItemBillingThresholds({this.usageGte = const Omittable.absent()});

factory SubscriptionItemBillingThresholds.fromJson(Map<String, dynamic> json) { return SubscriptionItemBillingThresholds(
  usageGte: json.containsKey('usage_gte') ? Omittable(json['usage_gte'] != null ? (json['usage_gte'] as num).toInt() : null) : const Omittable.absent(),
); }

/// Usage threshold that triggers the subscription to create an invoice
final Omittable<int?> usageGte;

Map<String, dynamic> toJson() { return {
  if (usageGte.isPresent) 'usage_gte': usageGte.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'usage_gte'}.contains(key)); } 
SubscriptionItemBillingThresholds copyWith({Omittable<int?>? usageGte}) { return SubscriptionItemBillingThresholds(
  usageGte: usageGte ?? this.usageGte,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionItemBillingThresholds &&
          usageGte == other.usageGte; } 
@override int get hashCode { return usageGte.hashCode; } 
@override String toString() { return 'SubscriptionItemBillingThresholds(usageGte: $usageGte)'; } 
 }

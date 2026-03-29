// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class SubscriptionItemBillingThresholds {const SubscriptionItemBillingThresholds({this.usageGte});

factory SubscriptionItemBillingThresholds.fromJson(Map<String, dynamic> json) { return SubscriptionItemBillingThresholds(
  usageGte: json['usage_gte'] != null ? (json['usage_gte'] as num).toInt() : null,
); }

/// Usage threshold that triggers the subscription to create an invoice
final int? usageGte;

Map<String, dynamic> toJson() { return {
  'usage_gte': ?usageGte,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'usage_gte'}.contains(key)); } 
SubscriptionItemBillingThresholds copyWith({int? Function()? usageGte}) { return SubscriptionItemBillingThresholds(
  usageGte: usageGte != null ? usageGte() : this.usageGte,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubscriptionItemBillingThresholds &&
          usageGte == other.usageGte; } 
@override int get hashCode { return usageGte.hashCode; } 
@override String toString() { return 'SubscriptionItemBillingThresholds(usageGte: $usageGte)'; } 
 }

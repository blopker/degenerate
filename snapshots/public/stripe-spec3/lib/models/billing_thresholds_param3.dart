// GENERATED CODE - DO NOT MODIFY BY HAND

final class BillingThresholdsParam3 {const BillingThresholdsParam3({this.amountGte, this.resetBillingCycleAnchor, });

factory BillingThresholdsParam3.fromJson(Map<String, dynamic> json) { return BillingThresholdsParam3(
  amountGte: json['amount_gte'] != null ? (json['amount_gte'] as num).toInt() : null,
  resetBillingCycleAnchor: json['reset_billing_cycle_anchor'] as bool?,
); }

final int? amountGte;

final bool? resetBillingCycleAnchor;

Map<String, dynamic> toJson() { return {
  'amount_gte': ?amountGte,
  'reset_billing_cycle_anchor': ?resetBillingCycleAnchor,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount_gte', 'reset_billing_cycle_anchor'}.contains(key)); } 
BillingThresholdsParam3 copyWith({int Function()? amountGte, bool Function()? resetBillingCycleAnchor, }) { return BillingThresholdsParam3(
  amountGte: amountGte != null ? amountGte() : this.amountGte,
  resetBillingCycleAnchor: resetBillingCycleAnchor != null ? resetBillingCycleAnchor() : this.resetBillingCycleAnchor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingThresholdsParam3 &&
          amountGte == other.amountGte &&
          resetBillingCycleAnchor == other.resetBillingCycleAnchor; } 
@override int get hashCode { return Object.hash(amountGte, resetBillingCycleAnchor); } 
@override String toString() { return 'BillingThresholdsParam3(amountGte: $amountGte, resetBillingCycleAnchor: $resetBillingCycleAnchor)'; } 
 }

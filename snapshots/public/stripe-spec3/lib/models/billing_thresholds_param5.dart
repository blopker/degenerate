// GENERATED CODE - DO NOT MODIFY BY HAND

final class BillingThresholdsParam5 {const BillingThresholdsParam5({this.amountGte, this.resetBillingCycleAnchor, });

factory BillingThresholdsParam5.fromJson(Map<String, dynamic> json) { return BillingThresholdsParam5(
  amountGte: json['amount_gte'] != null ? (json['amount_gte'] as num).toInt() : null,
  resetBillingCycleAnchor: json['reset_billing_cycle_anchor'] as bool?,
); }

final int? amountGte;

final bool? resetBillingCycleAnchor;

Map<String, dynamic> toJson() { return {
  'amount_gte': ?amountGte,
  'reset_billing_cycle_anchor': ?resetBillingCycleAnchor,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
BillingThresholdsParam5 copyWith({int Function()? amountGte, bool Function()? resetBillingCycleAnchor, }) { return BillingThresholdsParam5(
  amountGte: amountGte != null ? amountGte() : this.amountGte,
  resetBillingCycleAnchor: resetBillingCycleAnchor != null ? resetBillingCycleAnchor() : this.resetBillingCycleAnchor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingThresholdsParam5 &&
          amountGte == other.amountGte &&
          resetBillingCycleAnchor == other.resetBillingCycleAnchor; } 
@override int get hashCode { return Object.hash(amountGte, resetBillingCycleAnchor); } 
@override String toString() { return 'BillingThresholdsParam5(amountGte: $amountGte, resetBillingCycleAnchor: $resetBillingCycleAnchor)'; } 
 }

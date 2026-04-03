// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BillingThresholdsParam {const BillingThresholdsParam({this.amountGte, this.resetBillingCycleAnchor, });

factory BillingThresholdsParam.fromJson(Map<String, dynamic> json) { return BillingThresholdsParam(
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
BillingThresholdsParam copyWith({int Function()? amountGte, bool Function()? resetBillingCycleAnchor, }) { return BillingThresholdsParam(
  amountGte: amountGte != null ? amountGte() : this.amountGte,
  resetBillingCycleAnchor: resetBillingCycleAnchor != null ? resetBillingCycleAnchor() : this.resetBillingCycleAnchor,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BillingThresholdsParam &&
          amountGte == other.amountGte &&
          resetBillingCycleAnchor == other.resetBillingCycleAnchor; } 
@override int get hashCode { return Object.hash(amountGte, resetBillingCycleAnchor); } 
@override String toString() { return 'BillingThresholdsParam(amountGte: $amountGte, resetBillingCycleAnchor: $resetBillingCycleAnchor)'; } 
 }

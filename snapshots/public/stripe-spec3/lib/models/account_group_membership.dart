// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class AccountGroupMembership {const AccountGroupMembership({this.paymentsPricing = const Omittable.absent()});

factory AccountGroupMembership.fromJson(Map<String, dynamic> json) { return AccountGroupMembership(
  paymentsPricing: json.containsKey('payments_pricing') ? Omittable(json['payments_pricing'] as String?) : const Omittable.absent(),
); }

/// The group the account is in to determine their payments pricing, and null if the account is on customized pricing. [See the Platform pricing tool documentation](https://docs.stripe.com/connect/platform-pricing-tools) for details.
final Omittable<String?> paymentsPricing;

Map<String, dynamic> toJson() { return {
  if (paymentsPricing.isPresent) 'payments_pricing': paymentsPricing.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'payments_pricing'}.contains(key)); } 
AccountGroupMembership copyWith({Omittable<String?>? paymentsPricing}) { return AccountGroupMembership(
  paymentsPricing: paymentsPricing ?? this.paymentsPricing,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountGroupMembership &&
          paymentsPricing == other.paymentsPricing; } 
@override int get hashCode { return paymentsPricing.hashCode; } 
@override String toString() { return 'AccountGroupMembership(paymentsPricing: $paymentsPricing)'; } 
 }

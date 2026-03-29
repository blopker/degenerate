// GENERATED CODE - DO NOT MODIFY BY HAND

import 'address.dart';/// Owner's verified billing address. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
final class PaymentMethodDetailsCardWalletMasterpassBillingAddress {const PaymentMethodDetailsCardWalletMasterpassBillingAddress({this.address});

factory PaymentMethodDetailsCardWalletMasterpassBillingAddress.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsCardWalletMasterpassBillingAddress(
  address: Address.canParse(json) ? Address.fromJson(json) : null,
); }

final Address? address;

/// At least one variant must be present.
bool get isValid { return address != null; } 
Map<String, dynamic> toJson() { return {
  ...?address?.toJson(),
}; } 
 }

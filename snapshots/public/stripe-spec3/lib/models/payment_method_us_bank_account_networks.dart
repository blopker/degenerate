// GENERATED CODE - DO NOT MODIFY BY HAND

import 'us_bank_account_networks.dart';/// Contains information about US bank account networks that can be used.
final class PaymentMethodUsBankAccountNetworks {const PaymentMethodUsBankAccountNetworks({this.usBankAccountNetworks});

factory PaymentMethodUsBankAccountNetworks.fromJson(Map<String, dynamic> json) { return PaymentMethodUsBankAccountNetworks(
  usBankAccountNetworks: UsBankAccountNetworks.canParse(json) ? UsBankAccountNetworks.fromJson(json) : null,
); }

final UsBankAccountNetworks? usBankAccountNetworks;

/// At least one variant must be present.
bool get isValid { return usBankAccountNetworks != null; } 
Map<String, dynamic> toJson() { return {
  ...?usBankAccountNetworks?.toJson(),
}; } 
 }

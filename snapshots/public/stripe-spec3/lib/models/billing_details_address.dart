// GENERATED CODE - DO NOT MODIFY BY HAND

import 'address.dart';/// Billing address.
final class BillingDetailsAddress {const BillingDetailsAddress({this.address});

factory BillingDetailsAddress.fromJson(Map<String, dynamic> json) { return BillingDetailsAddress(
  address: Address.canParse(json) ? Address.fromJson(json) : null,
); }

final Address? address;

/// At least one variant must be present.
bool get isValid { return address != null; } 
Map<String, dynamic> toJson() { return {
  ...?address?.toJson(),
}; } 
 }

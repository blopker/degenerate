// GENERATED CODE - DO NOT MODIFY BY HAND

import 'address.dart';/// The customer's address.
final class CustomerAddress {const CustomerAddress({this.address});

factory CustomerAddress.fromJson(Map<String, dynamic> json) { return CustomerAddress(
  address: Address.canParse(json) ? Address.fromJson(json) : null,
); }

final Address? address;

/// At least one variant must be present.
bool get isValid { return address != null; } 
Map<String, dynamic> toJson() { return {
  ...?address?.toJson(),
}; } 
 }

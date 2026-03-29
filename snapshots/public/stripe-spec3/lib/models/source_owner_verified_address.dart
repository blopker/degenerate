// GENERATED CODE - DO NOT MODIFY BY HAND

import 'address.dart';/// Verified owner's address. Verified values are verified or provided by the payment method directly (and if supported) at the time of authorization or settlement. They cannot be set or mutated.
final class SourceOwnerVerifiedAddress {const SourceOwnerVerifiedAddress({this.address});

factory SourceOwnerVerifiedAddress.fromJson(Map<String, dynamic> json) { return SourceOwnerVerifiedAddress(
  address: Address.canParse(json) ? Address.fromJson(json) : null,
); }

final Address? address;

/// At least one variant must be present.
bool get isValid { return address != null; } 
Map<String, dynamic> toJson() { return {
  ...?address?.toJson(),
}; } 
 }

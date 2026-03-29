// GENERATED CODE - DO NOT MODIFY BY HAND

import 'address.dart';/// The user's verified address.
final class GelatoVerifiedOutputsAddress {const GelatoVerifiedOutputsAddress({this.address});

factory GelatoVerifiedOutputsAddress.fromJson(Map<String, dynamic> json) { return GelatoVerifiedOutputsAddress(
  address: Address.canParse(json) ? Address.fromJson(json) : null,
); }

final Address? address;

/// At least one variant must be present.
bool get isValid { return address != null; } 
Map<String, dynamic> toJson() { return {
  ...?address?.toJson(),
}; } 
 }

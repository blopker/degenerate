// GENERATED CODE - DO NOT MODIFY BY HAND

import 'address.dart';/// Owner's address.
final class SourceOwnerAddress {const SourceOwnerAddress({this.address});

factory SourceOwnerAddress.fromJson(Map<String, dynamic> json) { return SourceOwnerAddress(
  address: Address.canParse(json) ? Address.fromJson(json) : null,
); }

final Address? address;

/// At least one variant must be present.
bool get isValid { return address != null; } 
Map<String, dynamic> toJson() { return {
  ...?address?.toJson(),
}; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'address.dart';/// A publicly available mailing address for sending support issues to.
final class AccountBusinessProfileSupportAddress {const AccountBusinessProfileSupportAddress({this.address});

factory AccountBusinessProfileSupportAddress.fromJson(Map<String, dynamic> json) { return AccountBusinessProfileSupportAddress(
  address: Address.canParse(json) ? Address.fromJson(json) : null,
); }

final Address? address;

/// At least one variant must be present.
bool get isValid { return address != null; } 
Map<String, dynamic> toJson() { return {
  ...?address?.toJson(),
}; } 
 }

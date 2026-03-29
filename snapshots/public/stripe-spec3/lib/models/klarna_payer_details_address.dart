// GENERATED CODE - DO NOT MODIFY BY HAND

import 'klarna_address.dart';/// The payer's address
final class KlarnaPayerDetailsAddress {const KlarnaPayerDetailsAddress({this.klarnaAddress});

factory KlarnaPayerDetailsAddress.fromJson(Map<String, dynamic> json) { return KlarnaPayerDetailsAddress(
  klarnaAddress: KlarnaAddress.canParse(json) ? KlarnaAddress.fromJson(json) : null,
); }

final KlarnaAddress? klarnaAddress;

/// At least one variant must be present.
bool get isValid { return klarnaAddress != null; } 
Map<String, dynamic> toJson() { return {
  ...?klarnaAddress?.toJson(),
}; } 
 }

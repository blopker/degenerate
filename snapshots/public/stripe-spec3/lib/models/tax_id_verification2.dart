// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tax_id_verification.dart';/// Tax ID verification information.
final class TaxIdVerification2 {const TaxIdVerification2({this.taxIdVerification});

factory TaxIdVerification2.fromJson(Map<String, dynamic> json) { return TaxIdVerification2(
  taxIdVerification: TaxIdVerification.canParse(json) ? TaxIdVerification.fromJson(json) : null,
); }

final TaxIdVerification? taxIdVerification;

/// At least one variant must be present.
bool get isValid { return taxIdVerification != null; } 
Map<String, dynamic> toJson() { return {
  ...?taxIdVerification?.toJson(),
}; } 
 }

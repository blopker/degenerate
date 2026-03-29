// GENERATED CODE - DO NOT MODIFY BY HAND

import 'legal_entity_company_verification.dart';/// Information on the verification state of the company.
final class LegalEntityCompanyVerification2 {const LegalEntityCompanyVerification2({this.legalEntityCompanyVerification});

factory LegalEntityCompanyVerification2.fromJson(Map<String, dynamic> json) { return LegalEntityCompanyVerification2(
  legalEntityCompanyVerification: LegalEntityCompanyVerification.canParse(json) ? LegalEntityCompanyVerification.fromJson(json) : null,
); }

final LegalEntityCompanyVerification? legalEntityCompanyVerification;

/// At least one variant must be present.
bool get isValid { return legalEntityCompanyVerification != null; } 
Map<String, dynamic> toJson() { return {
  ...?legalEntityCompanyVerification?.toJson(),
}; } 
 }

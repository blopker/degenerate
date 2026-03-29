// GENERATED CODE - DO NOT MODIFY BY HAND

import 'legal_entity_directorship_declaration.dart';/// This hash is used to attest that the director information provided to Stripe is both current and correct.
final class LegalEntityCompanyDirectorshipDeclaration {const LegalEntityCompanyDirectorshipDeclaration({this.legalEntityDirectorshipDeclaration});

factory LegalEntityCompanyDirectorshipDeclaration.fromJson(Map<String, dynamic> json) { return LegalEntityCompanyDirectorshipDeclaration(
  legalEntityDirectorshipDeclaration: LegalEntityDirectorshipDeclaration.canParse(json) ? LegalEntityDirectorshipDeclaration.fromJson(json) : null,
); }

final LegalEntityDirectorshipDeclaration? legalEntityDirectorshipDeclaration;

/// At least one variant must be present.
bool get isValid { return legalEntityDirectorshipDeclaration != null; } 
Map<String, dynamic> toJson() { return {
  ...?legalEntityDirectorshipDeclaration?.toJson(),
}; } 
 }

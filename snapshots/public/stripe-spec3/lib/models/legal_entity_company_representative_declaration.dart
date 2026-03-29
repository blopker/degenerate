// GENERATED CODE - DO NOT MODIFY BY HAND

import 'legal_entity_representative_declaration.dart';/// This hash is used to attest that the representative is authorized to act as the representative of their legal entity.
final class LegalEntityCompanyRepresentativeDeclaration {const LegalEntityCompanyRepresentativeDeclaration({this.legalEntityRepresentativeDeclaration});

factory LegalEntityCompanyRepresentativeDeclaration.fromJson(Map<String, dynamic> json) { return LegalEntityCompanyRepresentativeDeclaration(
  legalEntityRepresentativeDeclaration: LegalEntityRepresentativeDeclaration.canParse(json) ? LegalEntityRepresentativeDeclaration.fromJson(json) : null,
); }

final LegalEntityRepresentativeDeclaration? legalEntityRepresentativeDeclaration;

/// At least one variant must be present.
bool get isValid { return legalEntityRepresentativeDeclaration != null; } 
Map<String, dynamic> toJson() { return {
  ...?legalEntityRepresentativeDeclaration?.toJson(),
}; } 
 }

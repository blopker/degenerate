// GENERATED CODE - DO NOT MODIFY BY HAND

import 'legal_entity_company_verification_document.dart';/// 
final class LegalEntityCompanyVerification {const LegalEntityCompanyVerification({required this.document});

factory LegalEntityCompanyVerification.fromJson(Map<String, dynamic> json) { return LegalEntityCompanyVerification(
  document: LegalEntityCompanyVerificationDocument.fromJson(json['document'] as Map<String, dynamic>),
); }

final LegalEntityCompanyVerificationDocument document;

Map<String, dynamic> toJson() { return {
  'document': document.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('document'); } 
LegalEntityCompanyVerification copyWith({LegalEntityCompanyVerificationDocument? document}) { return LegalEntityCompanyVerification(
  document: document ?? this.document,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LegalEntityCompanyVerification &&
          document == other.document; } 
@override int get hashCode { return document.hashCode; } 
@override String toString() { return 'LegalEntityCompanyVerification(document: $document)'; } 
 }

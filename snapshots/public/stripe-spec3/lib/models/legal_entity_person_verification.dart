// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'legal_entity_person_verification_document.dart';/// 
@immutable final class LegalEntityPersonVerification {const LegalEntityPersonVerification({required this.status, this.additionalDocument = const Omittable.absent(), this.details = const Omittable.absent(), this.detailsCode = const Omittable.absent(), this.document, });

factory LegalEntityPersonVerification.fromJson(Map<String, dynamic> json) { return LegalEntityPersonVerification(
  additionalDocument: json.containsKey('additional_document') ? Omittable(json['additional_document'] != null ? LegalEntityPersonVerificationDocument.fromJson(json['additional_document'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  details: json.containsKey('details') ? Omittable(json['details'] as String?) : const Omittable.absent(),
  detailsCode: json.containsKey('details_code') ? Omittable(json['details_code'] as String?) : const Omittable.absent(),
  document: json['document'] != null ? LegalEntityPersonVerificationDocument.fromJson(json['document'] as Map<String, dynamic>) : null,
  status: json['status'] as String,
); }

/// A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
final Omittable<LegalEntityPersonVerificationDocument?> additionalDocument;

/// A user-displayable string describing the verification state for the person. For example, this may say "Provided identity information could not be verified".
final Omittable<String?> details;

/// One of `document_address_mismatch`, `document_dob_mismatch`, `document_duplicate_type`, `document_id_number_mismatch`, `document_name_mismatch`, `document_nationality_mismatch`, `failed_keyed_identity`, or `failed_other`. A machine-readable code specifying the verification state for the person.
final Omittable<String?> detailsCode;

final LegalEntityPersonVerificationDocument? document;

/// The state of verification for the person. Possible values are `unverified`, `pending`, or `verified`. Please refer [guide](https://docs.stripe.com/connect/handling-api-verification) to handle verification updates.
final String status;

Map<String, dynamic> toJson() { return {
  if (additionalDocument.isPresent) 'additional_document': additionalDocument.value?.toJson(),
  if (details.isPresent) 'details': details.value,
  if (detailsCode.isPresent) 'details_code': detailsCode.value,
  if (document != null) 'document': document?.toJson(),
  'status': status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('status') && json['status'] is String; } 
LegalEntityPersonVerification copyWith({Omittable<LegalEntityPersonVerificationDocument?>? additionalDocument, Omittable<String?>? details, Omittable<String?>? detailsCode, LegalEntityPersonVerificationDocument? Function()? document, String? status, }) { return LegalEntityPersonVerification(
  additionalDocument: additionalDocument ?? this.additionalDocument,
  details: details ?? this.details,
  detailsCode: detailsCode ?? this.detailsCode,
  document: document != null ? document() : this.document,
  status: status ?? this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LegalEntityPersonVerification &&
          additionalDocument == other.additionalDocument &&
          details == other.details &&
          detailsCode == other.detailsCode &&
          document == other.document &&
          status == other.status; } 
@override int get hashCode { return Object.hash(additionalDocument, details, detailsCode, document, status); } 
@override String toString() { return 'LegalEntityPersonVerification(additionalDocument: $additionalDocument, details: $details, detailsCode: $detailsCode, document: $document, status: $status)'; } 
 }

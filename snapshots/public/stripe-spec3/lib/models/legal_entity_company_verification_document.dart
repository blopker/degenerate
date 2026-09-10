// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file.dart';import 'legal_entity_company_verification_document_back.dart';import 'legal_entity_company_verification_document_front.dart';/// 
@immutable final class LegalEntityCompanyVerificationDocument {const LegalEntityCompanyVerificationDocument({this.back = const Omittable.absent(), this.details = const Omittable.absent(), this.detailsCode = const Omittable.absent(), this.front = const Omittable.absent(), });

factory LegalEntityCompanyVerificationDocument.fromJson(Map<String, dynamic> json) { return LegalEntityCompanyVerificationDocument(
  back: json.containsKey('back') ? Omittable(json['back'] != null ? OneOf2.parse(json['back'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  details: json.containsKey('details') ? Omittable(json['details'] as String?) : const Omittable.absent(),
  detailsCode: json.containsKey('details_code') ? Omittable(json['details_code'] as String?) : const Omittable.absent(),
  front: json.containsKey('front') ? Omittable(json['front'] != null ? OneOf2.parse(json['front'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
); }

/// The back of a document returned by a [file upload](https://api.stripe.com#create_file) with a `purpose` value of `additional_verification`. Note that `additional_verification` files are [not downloadable](/file-upload#uploading-a-file).
final Omittable<LegalEntityCompanyVerificationDocumentBack?> back;

/// A user-displayable string describing the verification state of this document.
final Omittable<String?> details;

/// One of `document_corrupt`, `document_expired`, `document_failed_copy`, `document_failed_greyscale`, `document_failed_other`, `document_failed_test_mode`, `document_fraudulent`, `document_incomplete`, `document_invalid`, `document_manipulated`, `document_not_readable`, `document_not_uploaded`, `document_type_not_supported`, or `document_too_large`. A machine-readable code specifying the verification state for this document.
final Omittable<String?> detailsCode;

/// The front of a document returned by a [file upload](https://api.stripe.com#create_file) with a `purpose` value of `additional_verification`. Note that `additional_verification` files are [not downloadable](/file-upload#uploading-a-file).
final Omittable<LegalEntityCompanyVerificationDocumentFront?> front;

Map<String, dynamic> toJson() { return {
  if (back.isPresent) 'back': back.value?.toJson(),
  if (details.isPresent) 'details': details.value,
  if (detailsCode.isPresent) 'details_code': detailsCode.value,
  if (front.isPresent) 'front': front.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'back', 'details', 'details_code', 'front'}.contains(key)); } 
LegalEntityCompanyVerificationDocument copyWith({Omittable<LegalEntityCompanyVerificationDocumentBack?>? back, Omittable<String?>? details, Omittable<String?>? detailsCode, Omittable<LegalEntityCompanyVerificationDocumentFront?>? front, }) { return LegalEntityCompanyVerificationDocument(
  back: back ?? this.back,
  details: details ?? this.details,
  detailsCode: detailsCode ?? this.detailsCode,
  front: front ?? this.front,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LegalEntityCompanyVerificationDocument &&
          back == other.back &&
          details == other.details &&
          detailsCode == other.detailsCode &&
          front == other.front; } 
@override int get hashCode { return Object.hash(back, details, detailsCode, front); } 
@override String toString() { return 'LegalEntityCompanyVerificationDocument(back: $back, details: $details, detailsCode: $detailsCode, front: $front)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file.dart';import 'issuing_dispute_other_evidence_additional_documentation.dart';/// Whether the product was a merchandise or service.
@immutable final class IssuingDisputeOtherEvidenceProductType {const IssuingDisputeOtherEvidenceProductType._(this.value);

factory IssuingDisputeOtherEvidenceProductType.fromJson(String json) { return switch (json) {
  'merchandise' => merchandise,
  'service' => service,
  _ => IssuingDisputeOtherEvidenceProductType._(json),
}; }

static const IssuingDisputeOtherEvidenceProductType merchandise = IssuingDisputeOtherEvidenceProductType._('merchandise');

static const IssuingDisputeOtherEvidenceProductType service = IssuingDisputeOtherEvidenceProductType._('service');

static const List<IssuingDisputeOtherEvidenceProductType> values = [merchandise, service];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingDisputeOtherEvidenceProductType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingDisputeOtherEvidenceProductType($value)'; } 
 }
/// 
@immutable final class IssuingDisputeOtherEvidence {const IssuingDisputeOtherEvidence({this.additionalDocumentation, this.explanation, this.productDescription, this.productType, });

factory IssuingDisputeOtherEvidence.fromJson(Map<String, dynamic> json) { return IssuingDisputeOtherEvidence(
  additionalDocumentation: json['additional_documentation'] != null ? OneOf2.parse(json['additional_documentation'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null,
  explanation: json['explanation'] as String?,
  productDescription: json['product_description'] as String?,
  productType: json['product_type'] != null ? IssuingDisputeOtherEvidenceProductType.fromJson(json['product_type'] as String) : null,
); }

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
final IssuingDisputeOtherEvidenceAdditionalDocumentation? additionalDocumentation;

/// Explanation of why the cardholder is disputing this transaction.
final String? explanation;

/// Description of the merchandise or service that was purchased.
final String? productDescription;

/// Whether the product was a merchandise or service.
final IssuingDisputeOtherEvidenceProductType? productType;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation != null) 'additional_documentation': additionalDocumentation?.toJson(),
  'explanation': ?explanation,
  'product_description': ?productDescription,
  if (productType != null) 'product_type': productType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_documentation', 'explanation', 'product_description', 'product_type'}.contains(key)); } 
IssuingDisputeOtherEvidence copyWith({IssuingDisputeOtherEvidenceAdditionalDocumentation? Function()? additionalDocumentation, String? Function()? explanation, String? Function()? productDescription, IssuingDisputeOtherEvidenceProductType? Function()? productType, }) { return IssuingDisputeOtherEvidence(
  additionalDocumentation: additionalDocumentation != null ? additionalDocumentation() : this.additionalDocumentation,
  explanation: explanation != null ? explanation() : this.explanation,
  productDescription: productDescription != null ? productDescription() : this.productDescription,
  productType: productType != null ? productType() : this.productType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingDisputeOtherEvidence &&
          additionalDocumentation == other.additionalDocumentation &&
          explanation == other.explanation &&
          productDescription == other.productDescription &&
          productType == other.productType; } 
@override int get hashCode { return Object.hash(additionalDocumentation, explanation, productDescription, productType); } 
@override String toString() { return 'IssuingDisputeOtherEvidence(additionalDocumentation: $additionalDocumentation, explanation: $explanation, productDescription: $productDescription, productType: $productType)'; } 
 }

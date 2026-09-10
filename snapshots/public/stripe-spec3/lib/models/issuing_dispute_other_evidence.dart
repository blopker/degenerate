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
@immutable final class IssuingDisputeOtherEvidence {const IssuingDisputeOtherEvidence({this.additionalDocumentation = const Omittable.absent(), this.explanation = const Omittable.absent(), this.productDescription = const Omittable.absent(), this.productType = const Omittable.absent(), });

factory IssuingDisputeOtherEvidence.fromJson(Map<String, dynamic> json) { return IssuingDisputeOtherEvidence(
  additionalDocumentation: json.containsKey('additional_documentation') ? Omittable(json['additional_documentation'] != null ? OneOf2.parse(json['additional_documentation'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  explanation: json.containsKey('explanation') ? Omittable(json['explanation'] as String?) : const Omittable.absent(),
  productDescription: json.containsKey('product_description') ? Omittable(json['product_description'] as String?) : const Omittable.absent(),
  productType: json.containsKey('product_type') ? Omittable(json['product_type'] != null ? IssuingDisputeOtherEvidenceProductType.fromJson(json['product_type'] as String) : null) : const Omittable.absent(),
); }

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
final Omittable<IssuingDisputeOtherEvidenceAdditionalDocumentation?> additionalDocumentation;

/// Explanation of why the cardholder is disputing this transaction.
final Omittable<String?> explanation;

/// Description of the merchandise or service that was purchased.
final Omittable<String?> productDescription;

/// Whether the product was a merchandise or service.
final Omittable<IssuingDisputeOtherEvidenceProductType?> productType;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation.isPresent) 'additional_documentation': additionalDocumentation.value?.toJson(),
  if (explanation.isPresent) 'explanation': explanation.value,
  if (productDescription.isPresent) 'product_description': productDescription.value,
  if (productType.isPresent) 'product_type': productType.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_documentation', 'explanation', 'product_description', 'product_type'}.contains(key)); } 
IssuingDisputeOtherEvidence copyWith({Omittable<IssuingDisputeOtherEvidenceAdditionalDocumentation?>? additionalDocumentation, Omittable<String?>? explanation, Omittable<String?>? productDescription, Omittable<IssuingDisputeOtherEvidenceProductType?>? productType, }) { return IssuingDisputeOtherEvidence(
  additionalDocumentation: additionalDocumentation ?? this.additionalDocumentation,
  explanation: explanation ?? this.explanation,
  productDescription: productDescription ?? this.productDescription,
  productType: productType ?? this.productType,
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

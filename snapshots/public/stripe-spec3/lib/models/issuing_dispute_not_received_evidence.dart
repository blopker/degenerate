// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file.dart';import 'issuing_dispute_not_received_evidence_additional_documentation.dart';/// Whether the product was a merchandise or service.
@immutable final class IssuingDisputeNotReceivedEvidenceProductType {const IssuingDisputeNotReceivedEvidenceProductType._(this.value);

factory IssuingDisputeNotReceivedEvidenceProductType.fromJson(String json) { return switch (json) {
  'merchandise' => merchandise,
  'service' => service,
  _ => IssuingDisputeNotReceivedEvidenceProductType._(json),
}; }

static const IssuingDisputeNotReceivedEvidenceProductType merchandise = IssuingDisputeNotReceivedEvidenceProductType._('merchandise');

static const IssuingDisputeNotReceivedEvidenceProductType service = IssuingDisputeNotReceivedEvidenceProductType._('service');

static const List<IssuingDisputeNotReceivedEvidenceProductType> values = [merchandise, service];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingDisputeNotReceivedEvidenceProductType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingDisputeNotReceivedEvidenceProductType($value)'; } 
 }
/// 
@immutable final class IssuingDisputeNotReceivedEvidence {const IssuingDisputeNotReceivedEvidence({this.additionalDocumentation = const Omittable.absent(), this.expectedAt = const Omittable.absent(), this.explanation = const Omittable.absent(), this.productDescription = const Omittable.absent(), this.productType = const Omittable.absent(), });

factory IssuingDisputeNotReceivedEvidence.fromJson(Map<String, dynamic> json) { return IssuingDisputeNotReceivedEvidence(
  additionalDocumentation: json.containsKey('additional_documentation') ? Omittable(json['additional_documentation'] != null ? OneOf2.parse(json['additional_documentation'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  expectedAt: json.containsKey('expected_at') ? Omittable(json['expected_at'] != null ? (json['expected_at'] as num).toInt() : null) : const Omittable.absent(),
  explanation: json.containsKey('explanation') ? Omittable(json['explanation'] as String?) : const Omittable.absent(),
  productDescription: json.containsKey('product_description') ? Omittable(json['product_description'] as String?) : const Omittable.absent(),
  productType: json.containsKey('product_type') ? Omittable(json['product_type'] != null ? IssuingDisputeNotReceivedEvidenceProductType.fromJson(json['product_type'] as String) : null) : const Omittable.absent(),
); }

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
final Omittable<IssuingDisputeNotReceivedEvidenceAdditionalDocumentation?> additionalDocumentation;

/// Date when the cardholder expected to receive the product.
final Omittable<int?> expectedAt;

/// Explanation of why the cardholder is disputing this transaction.
final Omittable<String?> explanation;

/// Description of the merchandise or service that was purchased.
final Omittable<String?> productDescription;

/// Whether the product was a merchandise or service.
final Omittable<IssuingDisputeNotReceivedEvidenceProductType?> productType;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation.isPresent) 'additional_documentation': additionalDocumentation.value?.toJson(),
  if (expectedAt.isPresent) 'expected_at': expectedAt.value,
  if (explanation.isPresent) 'explanation': explanation.value,
  if (productDescription.isPresent) 'product_description': productDescription.value,
  if (productType.isPresent) 'product_type': productType.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_documentation', 'expected_at', 'explanation', 'product_description', 'product_type'}.contains(key)); } 
IssuingDisputeNotReceivedEvidence copyWith({Omittable<IssuingDisputeNotReceivedEvidenceAdditionalDocumentation?>? additionalDocumentation, Omittable<int?>? expectedAt, Omittable<String?>? explanation, Omittable<String?>? productDescription, Omittable<IssuingDisputeNotReceivedEvidenceProductType?>? productType, }) { return IssuingDisputeNotReceivedEvidence(
  additionalDocumentation: additionalDocumentation ?? this.additionalDocumentation,
  expectedAt: expectedAt ?? this.expectedAt,
  explanation: explanation ?? this.explanation,
  productDescription: productDescription ?? this.productDescription,
  productType: productType ?? this.productType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingDisputeNotReceivedEvidence &&
          additionalDocumentation == other.additionalDocumentation &&
          expectedAt == other.expectedAt &&
          explanation == other.explanation &&
          productDescription == other.productDescription &&
          productType == other.productType; } 
@override int get hashCode { return Object.hash(additionalDocumentation, expectedAt, explanation, productDescription, productType); } 
@override String toString() { return 'IssuingDisputeNotReceivedEvidence(additionalDocumentation: $additionalDocumentation, expectedAt: $expectedAt, explanation: $explanation, productDescription: $productDescription, productType: $productType)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file.dart';import 'issuing_dispute_canceled_evidence_additional_documentation.dart';/// Whether the product was a merchandise or service.
@immutable final class IssuingDisputeCanceledEvidenceProductType {const IssuingDisputeCanceledEvidenceProductType._(this.value);

factory IssuingDisputeCanceledEvidenceProductType.fromJson(String json) { return switch (json) {
  'merchandise' => merchandise,
  'service' => service,
  _ => IssuingDisputeCanceledEvidenceProductType._(json),
}; }

static const IssuingDisputeCanceledEvidenceProductType merchandise = IssuingDisputeCanceledEvidenceProductType._('merchandise');

static const IssuingDisputeCanceledEvidenceProductType service = IssuingDisputeCanceledEvidenceProductType._('service');

static const List<IssuingDisputeCanceledEvidenceProductType> values = [merchandise, service];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingDisputeCanceledEvidenceProductType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingDisputeCanceledEvidenceProductType($value)'; } 
 }
/// Result of cardholder's attempt to return the product.
@immutable final class IssuingDisputeCanceledEvidenceReturnStatus {const IssuingDisputeCanceledEvidenceReturnStatus._(this.value);

factory IssuingDisputeCanceledEvidenceReturnStatus.fromJson(String json) { return switch (json) {
  'merchant_rejected' => merchantRejected,
  'successful' => successful,
  _ => IssuingDisputeCanceledEvidenceReturnStatus._(json),
}; }

static const IssuingDisputeCanceledEvidenceReturnStatus merchantRejected = IssuingDisputeCanceledEvidenceReturnStatus._('merchant_rejected');

static const IssuingDisputeCanceledEvidenceReturnStatus successful = IssuingDisputeCanceledEvidenceReturnStatus._('successful');

static const List<IssuingDisputeCanceledEvidenceReturnStatus> values = [merchantRejected, successful];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingDisputeCanceledEvidenceReturnStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingDisputeCanceledEvidenceReturnStatus($value)'; } 
 }
/// 
@immutable final class IssuingDisputeCanceledEvidence {const IssuingDisputeCanceledEvidence({this.additionalDocumentation = const Omittable.absent(), this.canceledAt = const Omittable.absent(), this.cancellationPolicyProvided = const Omittable.absent(), this.cancellationReason = const Omittable.absent(), this.expectedAt = const Omittable.absent(), this.explanation = const Omittable.absent(), this.productDescription = const Omittable.absent(), this.productType = const Omittable.absent(), this.returnStatus = const Omittable.absent(), this.returnedAt = const Omittable.absent(), });

factory IssuingDisputeCanceledEvidence.fromJson(Map<String, dynamic> json) { return IssuingDisputeCanceledEvidence(
  additionalDocumentation: json.containsKey('additional_documentation') ? Omittable(json['additional_documentation'] != null ? OneOf2.parse(json['additional_documentation'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  canceledAt: json.containsKey('canceled_at') ? Omittable(json['canceled_at'] != null ? (json['canceled_at'] as num).toInt() : null) : const Omittable.absent(),
  cancellationPolicyProvided: json.containsKey('cancellation_policy_provided') ? Omittable(json['cancellation_policy_provided'] as bool?) : const Omittable.absent(),
  cancellationReason: json.containsKey('cancellation_reason') ? Omittable(json['cancellation_reason'] as String?) : const Omittable.absent(),
  expectedAt: json.containsKey('expected_at') ? Omittable(json['expected_at'] != null ? (json['expected_at'] as num).toInt() : null) : const Omittable.absent(),
  explanation: json.containsKey('explanation') ? Omittable(json['explanation'] as String?) : const Omittable.absent(),
  productDescription: json.containsKey('product_description') ? Omittable(json['product_description'] as String?) : const Omittable.absent(),
  productType: json.containsKey('product_type') ? Omittable(json['product_type'] != null ? IssuingDisputeCanceledEvidenceProductType.fromJson(json['product_type'] as String) : null) : const Omittable.absent(),
  returnStatus: json.containsKey('return_status') ? Omittable(json['return_status'] != null ? IssuingDisputeCanceledEvidenceReturnStatus.fromJson(json['return_status'] as String) : null) : const Omittable.absent(),
  returnedAt: json.containsKey('returned_at') ? Omittable(json['returned_at'] != null ? (json['returned_at'] as num).toInt() : null) : const Omittable.absent(),
); }

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
final Omittable<IssuingDisputeCanceledEvidenceAdditionalDocumentation?> additionalDocumentation;

/// Date when order was canceled.
final Omittable<int?> canceledAt;

/// Whether the cardholder was provided with a cancellation policy.
final Omittable<bool?> cancellationPolicyProvided;

/// Reason for canceling the order.
final Omittable<String?> cancellationReason;

/// Date when the cardholder expected to receive the product.
final Omittable<int?> expectedAt;

/// Explanation of why the cardholder is disputing this transaction.
final Omittable<String?> explanation;

/// Description of the merchandise or service that was purchased.
final Omittable<String?> productDescription;

/// Whether the product was a merchandise or service.
final Omittable<IssuingDisputeCanceledEvidenceProductType?> productType;

/// Result of cardholder's attempt to return the product.
final Omittable<IssuingDisputeCanceledEvidenceReturnStatus?> returnStatus;

/// Date when the product was returned or attempted to be returned.
final Omittable<int?> returnedAt;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation.isPresent) 'additional_documentation': additionalDocumentation.value?.toJson(),
  if (canceledAt.isPresent) 'canceled_at': canceledAt.value,
  if (cancellationPolicyProvided.isPresent) 'cancellation_policy_provided': cancellationPolicyProvided.value,
  if (cancellationReason.isPresent) 'cancellation_reason': cancellationReason.value,
  if (expectedAt.isPresent) 'expected_at': expectedAt.value,
  if (explanation.isPresent) 'explanation': explanation.value,
  if (productDescription.isPresent) 'product_description': productDescription.value,
  if (productType.isPresent) 'product_type': productType.value?.toJson(),
  if (returnStatus.isPresent) 'return_status': returnStatus.value?.toJson(),
  if (returnedAt.isPresent) 'returned_at': returnedAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_documentation', 'canceled_at', 'cancellation_policy_provided', 'cancellation_reason', 'expected_at', 'explanation', 'product_description', 'product_type', 'return_status', 'returned_at'}.contains(key)); } 
IssuingDisputeCanceledEvidence copyWith({Omittable<IssuingDisputeCanceledEvidenceAdditionalDocumentation?>? additionalDocumentation, Omittable<int?>? canceledAt, Omittable<bool?>? cancellationPolicyProvided, Omittable<String?>? cancellationReason, Omittable<int?>? expectedAt, Omittable<String?>? explanation, Omittable<String?>? productDescription, Omittable<IssuingDisputeCanceledEvidenceProductType?>? productType, Omittable<IssuingDisputeCanceledEvidenceReturnStatus?>? returnStatus, Omittable<int?>? returnedAt, }) { return IssuingDisputeCanceledEvidence(
  additionalDocumentation: additionalDocumentation ?? this.additionalDocumentation,
  canceledAt: canceledAt ?? this.canceledAt,
  cancellationPolicyProvided: cancellationPolicyProvided ?? this.cancellationPolicyProvided,
  cancellationReason: cancellationReason ?? this.cancellationReason,
  expectedAt: expectedAt ?? this.expectedAt,
  explanation: explanation ?? this.explanation,
  productDescription: productDescription ?? this.productDescription,
  productType: productType ?? this.productType,
  returnStatus: returnStatus ?? this.returnStatus,
  returnedAt: returnedAt ?? this.returnedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingDisputeCanceledEvidence &&
          additionalDocumentation == other.additionalDocumentation &&
          canceledAt == other.canceledAt &&
          cancellationPolicyProvided == other.cancellationPolicyProvided &&
          cancellationReason == other.cancellationReason &&
          expectedAt == other.expectedAt &&
          explanation == other.explanation &&
          productDescription == other.productDescription &&
          productType == other.productType &&
          returnStatus == other.returnStatus &&
          returnedAt == other.returnedAt; } 
@override int get hashCode { return Object.hash(additionalDocumentation, canceledAt, cancellationPolicyProvided, cancellationReason, expectedAt, explanation, productDescription, productType, returnStatus, returnedAt); } 
@override String toString() { return 'IssuingDisputeCanceledEvidence(additionalDocumentation: $additionalDocumentation, canceledAt: $canceledAt, cancellationPolicyProvided: $cancellationPolicyProvided, cancellationReason: $cancellationReason, expectedAt: $expectedAt, explanation: $explanation, productDescription: $productDescription, productType: $productType, returnStatus: $returnStatus, returnedAt: $returnedAt)'; } 
 }

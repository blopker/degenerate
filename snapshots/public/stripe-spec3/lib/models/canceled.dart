// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'canceled_additional_documentation.dart';import 'canceled_canceled_at.dart';import 'canceled_cancellation_policy_provided.dart';import 'canceled_cancellation_reason.dart';import 'canceled_expected_at.dart';import 'canceled_explanation.dart';import 'canceled_product_description.dart';import 'canceled_returned_at.dart';final class CanceledProductType {const CanceledProductType._(this.value);

factory CanceledProductType.fromJson(String json) { return switch (json) {
  '' => $empty,
  'merchandise' => merchandise,
  'service' => service,
  _ => CanceledProductType._(json),
}; }

static const CanceledProductType $empty = CanceledProductType._('');

static const CanceledProductType merchandise = CanceledProductType._('merchandise');

static const CanceledProductType service = CanceledProductType._('service');

static const List<CanceledProductType> values = [$empty, merchandise, service];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CanceledProductType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CanceledProductType($value)'; } 
 }
final class CanceledReturnStatus {const CanceledReturnStatus._(this.value);

factory CanceledReturnStatus.fromJson(String json) { return switch (json) {
  '' => $empty,
  'merchant_rejected' => merchantRejected,
  'successful' => successful,
  _ => CanceledReturnStatus._(json),
}; }

static const CanceledReturnStatus $empty = CanceledReturnStatus._('');

static const CanceledReturnStatus merchantRejected = CanceledReturnStatus._('merchant_rejected');

static const CanceledReturnStatus successful = CanceledReturnStatus._('successful');

static const List<CanceledReturnStatus> values = [$empty, merchantRejected, successful];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CanceledReturnStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CanceledReturnStatus($value)'; } 
 }
final class Canceled {const Canceled({this.additionalDocumentation, this.canceledAt, this.cancellationPolicyProvided, this.cancellationReason, this.expectedAt, this.explanation, this.productDescription, this.productType, this.returnStatus, this.returnedAt, });

factory Canceled.fromJson(Map<String, dynamic> json) { return Canceled(
  additionalDocumentation: json['additional_documentation'] != null ? OneOf2.parse(json['additional_documentation'], fromA: (v) => v as String, fromB: (v) => CanceledAdditionalDocumentationVariant2.fromJson(v as String),) : null,
  canceledAt: json['canceled_at'] != null ? OneOf2.parse(json['canceled_at'], fromA: (v) => (v as num).toInt(), fromB: (v) => CanceledCanceledAtVariant2.fromJson(v as String),) : null,
  cancellationPolicyProvided: json['cancellation_policy_provided'] != null ? OneOf2.parse(json['cancellation_policy_provided'], fromA: (v) => v as bool, fromB: (v) => CanceledCancellationPolicyProvidedVariant2.fromJson(v as String),) : null,
  cancellationReason: json['cancellation_reason'] != null ? OneOf2.parse(json['cancellation_reason'], fromA: (v) => v as String, fromB: (v) => CanceledCancellationReasonVariant2.fromJson(v as String),) : null,
  expectedAt: json['expected_at'] != null ? OneOf2.parse(json['expected_at'], fromA: (v) => (v as num).toInt(), fromB: (v) => CanceledExpectedAtVariant2.fromJson(v as String),) : null,
  explanation: json['explanation'] != null ? OneOf2.parse(json['explanation'], fromA: (v) => v as String, fromB: (v) => CanceledExplanationVariant2.fromJson(v as String),) : null,
  productDescription: json['product_description'] != null ? OneOf2.parse(json['product_description'], fromA: (v) => v as String, fromB: (v) => CanceledProductDescriptionVariant2.fromJson(v as String),) : null,
  productType: json['product_type'] != null ? CanceledProductType.fromJson(json['product_type'] as String) : null,
  returnStatus: json['return_status'] != null ? CanceledReturnStatus.fromJson(json['return_status'] as String) : null,
  returnedAt: json['returned_at'] != null ? OneOf2.parse(json['returned_at'], fromA: (v) => (v as num).toInt(), fromB: (v) => CanceledReturnedAtVariant2.fromJson(v as String),) : null,
); }

final CanceledAdditionalDocumentation? additionalDocumentation;

final CanceledCanceledAt? canceledAt;

final CanceledCancellationPolicyProvided? cancellationPolicyProvided;

final CanceledCancellationReason? cancellationReason;

final CanceledExpectedAt? expectedAt;

final CanceledExplanation? explanation;

final CanceledProductDescription? productDescription;

final CanceledProductType? productType;

final CanceledReturnStatus? returnStatus;

final CanceledReturnedAt? returnedAt;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation != null) 'additional_documentation': additionalDocumentation?.toJson(),
  if (canceledAt != null) 'canceled_at': canceledAt?.toJson(),
  if (cancellationPolicyProvided != null) 'cancellation_policy_provided': cancellationPolicyProvided?.toJson(),
  if (cancellationReason != null) 'cancellation_reason': cancellationReason?.toJson(),
  if (expectedAt != null) 'expected_at': expectedAt?.toJson(),
  if (explanation != null) 'explanation': explanation?.toJson(),
  if (productDescription != null) 'product_description': productDescription?.toJson(),
  if (productType != null) 'product_type': productType?.toJson(),
  if (returnStatus != null) 'return_status': returnStatus?.toJson(),
  if (returnedAt != null) 'returned_at': returnedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_documentation', 'canceled_at', 'cancellation_policy_provided', 'cancellation_reason', 'expected_at', 'explanation', 'product_description', 'product_type', 'return_status', 'returned_at'}.contains(key)); } 
Canceled copyWith({CanceledAdditionalDocumentation Function()? additionalDocumentation, CanceledCanceledAt Function()? canceledAt, CanceledCancellationPolicyProvided Function()? cancellationPolicyProvided, CanceledCancellationReason Function()? cancellationReason, CanceledExpectedAt Function()? expectedAt, CanceledExplanation Function()? explanation, CanceledProductDescription Function()? productDescription, CanceledProductType Function()? productType, CanceledReturnStatus Function()? returnStatus, CanceledReturnedAt Function()? returnedAt, }) { return Canceled(
  additionalDocumentation: additionalDocumentation != null ? additionalDocumentation() : this.additionalDocumentation,
  canceledAt: canceledAt != null ? canceledAt() : this.canceledAt,
  cancellationPolicyProvided: cancellationPolicyProvided != null ? cancellationPolicyProvided() : this.cancellationPolicyProvided,
  cancellationReason: cancellationReason != null ? cancellationReason() : this.cancellationReason,
  expectedAt: expectedAt != null ? expectedAt() : this.expectedAt,
  explanation: explanation != null ? explanation() : this.explanation,
  productDescription: productDescription != null ? productDescription() : this.productDescription,
  productType: productType != null ? productType() : this.productType,
  returnStatus: returnStatus != null ? returnStatus() : this.returnStatus,
  returnedAt: returnedAt != null ? returnedAt() : this.returnedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Canceled &&
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
@override String toString() { return 'Canceled(additionalDocumentation: $additionalDocumentation, canceledAt: $canceledAt, cancellationPolicyProvided: $cancellationPolicyProvided, cancellationReason: $cancellationReason, expectedAt: $expectedAt, explanation: $explanation, productDescription: $productDescription, productType: $productType, returnStatus: $returnStatus, returnedAt: $returnedAt)'; } 
 }

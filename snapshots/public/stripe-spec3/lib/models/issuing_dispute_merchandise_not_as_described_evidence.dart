// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file.dart';import 'issuing_dispute_merchandise_not_as_described_evidence_additional_documentation.dart';/// Result of cardholder's attempt to return the product.
final class IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus {const IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus._(this.value);

factory IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus.fromJson(String json) { return switch (json) {
  'merchant_rejected' => merchantRejected,
  'successful' => successful,
  _ => IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus._(json),
}; }

static const IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus merchantRejected = IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus._('merchant_rejected');

static const IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus successful = IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus._('successful');

static const List<IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus> values = [merchantRejected, successful];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus($value)'; } 
 }
/// 
final class IssuingDisputeMerchandiseNotAsDescribedEvidence {const IssuingDisputeMerchandiseNotAsDescribedEvidence({this.additionalDocumentation, this.explanation, this.receivedAt, this.returnDescription, this.returnStatus, this.returnedAt, });

factory IssuingDisputeMerchandiseNotAsDescribedEvidence.fromJson(Map<String, dynamic> json) { return IssuingDisputeMerchandiseNotAsDescribedEvidence(
  additionalDocumentation: json['additional_documentation'] != null ? OneOf2.parse(json['additional_documentation'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null,
  explanation: json['explanation'] as String?,
  receivedAt: json['received_at'] != null ? (json['received_at'] as num).toInt() : null,
  returnDescription: json['return_description'] as String?,
  returnStatus: json['return_status'] != null ? IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus.fromJson(json['return_status'] as String) : null,
  returnedAt: json['returned_at'] != null ? (json['returned_at'] as num).toInt() : null,
); }

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
final IssuingDisputeMerchandiseNotAsDescribedEvidenceAdditionalDocumentation? additionalDocumentation;

/// Explanation of why the cardholder is disputing this transaction.
final String? explanation;

/// Date when the product was received.
final int? receivedAt;

/// Description of the cardholder's attempt to return the product.
final String? returnDescription;

/// Result of cardholder's attempt to return the product.
final IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus? returnStatus;

/// Date when the product was returned or attempted to be returned.
final int? returnedAt;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation != null) 'additional_documentation': additionalDocumentation?.toJson(),
  'explanation': ?explanation,
  'received_at': ?receivedAt,
  'return_description': ?returnDescription,
  if (returnStatus != null) 'return_status': returnStatus?.toJson(),
  'returned_at': ?returnedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_documentation', 'explanation', 'received_at', 'return_description', 'return_status', 'returned_at'}.contains(key)); } 
IssuingDisputeMerchandiseNotAsDescribedEvidence copyWith({IssuingDisputeMerchandiseNotAsDescribedEvidenceAdditionalDocumentation? Function()? additionalDocumentation, String? Function()? explanation, int? Function()? receivedAt, String? Function()? returnDescription, IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus? Function()? returnStatus, int? Function()? returnedAt, }) { return IssuingDisputeMerchandiseNotAsDescribedEvidence(
  additionalDocumentation: additionalDocumentation != null ? additionalDocumentation() : this.additionalDocumentation,
  explanation: explanation != null ? explanation() : this.explanation,
  receivedAt: receivedAt != null ? receivedAt() : this.receivedAt,
  returnDescription: returnDescription != null ? returnDescription() : this.returnDescription,
  returnStatus: returnStatus != null ? returnStatus() : this.returnStatus,
  returnedAt: returnedAt != null ? returnedAt() : this.returnedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingDisputeMerchandiseNotAsDescribedEvidence &&
          additionalDocumentation == other.additionalDocumentation &&
          explanation == other.explanation &&
          receivedAt == other.receivedAt &&
          returnDescription == other.returnDescription &&
          returnStatus == other.returnStatus &&
          returnedAt == other.returnedAt; } 
@override int get hashCode { return Object.hash(additionalDocumentation, explanation, receivedAt, returnDescription, returnStatus, returnedAt); } 
@override String toString() { return 'IssuingDisputeMerchandiseNotAsDescribedEvidence(additionalDocumentation: $additionalDocumentation, explanation: $explanation, receivedAt: $receivedAt, returnDescription: $returnDescription, returnStatus: $returnStatus, returnedAt: $returnedAt)'; } 
 }

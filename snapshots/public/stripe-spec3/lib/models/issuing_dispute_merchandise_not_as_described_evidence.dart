// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file.dart';import 'issuing_dispute_merchandise_not_as_described_evidence_additional_documentation.dart';/// Result of cardholder's attempt to return the product.
@immutable final class IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus {const IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus._(this.value);

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
@immutable final class IssuingDisputeMerchandiseNotAsDescribedEvidence {const IssuingDisputeMerchandiseNotAsDescribedEvidence({this.additionalDocumentation = const Omittable.absent(), this.explanation = const Omittable.absent(), this.receivedAt = const Omittable.absent(), this.returnDescription = const Omittable.absent(), this.returnStatus = const Omittable.absent(), this.returnedAt = const Omittable.absent(), });

factory IssuingDisputeMerchandiseNotAsDescribedEvidence.fromJson(Map<String, dynamic> json) { return IssuingDisputeMerchandiseNotAsDescribedEvidence(
  additionalDocumentation: json.containsKey('additional_documentation') ? Omittable(json['additional_documentation'] != null ? OneOf2.parse(json['additional_documentation'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  explanation: json.containsKey('explanation') ? Omittable(json['explanation'] as String?) : const Omittable.absent(),
  receivedAt: json.containsKey('received_at') ? Omittable(json['received_at'] != null ? (json['received_at'] as num).toInt() : null) : const Omittable.absent(),
  returnDescription: json.containsKey('return_description') ? Omittable(json['return_description'] as String?) : const Omittable.absent(),
  returnStatus: json.containsKey('return_status') ? Omittable(json['return_status'] != null ? IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus.fromJson(json['return_status'] as String) : null) : const Omittable.absent(),
  returnedAt: json.containsKey('returned_at') ? Omittable(json['returned_at'] != null ? (json['returned_at'] as num).toInt() : null) : const Omittable.absent(),
); }

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
final Omittable<IssuingDisputeMerchandiseNotAsDescribedEvidenceAdditionalDocumentation?> additionalDocumentation;

/// Explanation of why the cardholder is disputing this transaction.
final Omittable<String?> explanation;

/// Date when the product was received.
final Omittable<int?> receivedAt;

/// Description of the cardholder's attempt to return the product.
final Omittable<String?> returnDescription;

/// Result of cardholder's attempt to return the product.
final Omittable<IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus?> returnStatus;

/// Date when the product was returned or attempted to be returned.
final Omittable<int?> returnedAt;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation.isPresent) 'additional_documentation': additionalDocumentation.value?.toJson(),
  if (explanation.isPresent) 'explanation': explanation.value,
  if (receivedAt.isPresent) 'received_at': receivedAt.value,
  if (returnDescription.isPresent) 'return_description': returnDescription.value,
  if (returnStatus.isPresent) 'return_status': returnStatus.value?.toJson(),
  if (returnedAt.isPresent) 'returned_at': returnedAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_documentation', 'explanation', 'received_at', 'return_description', 'return_status', 'returned_at'}.contains(key)); } 
IssuingDisputeMerchandiseNotAsDescribedEvidence copyWith({Omittable<IssuingDisputeMerchandiseNotAsDescribedEvidenceAdditionalDocumentation?>? additionalDocumentation, Omittable<String?>? explanation, Omittable<int?>? receivedAt, Omittable<String?>? returnDescription, Omittable<IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus?>? returnStatus, Omittable<int?>? returnedAt, }) { return IssuingDisputeMerchandiseNotAsDescribedEvidence(
  additionalDocumentation: additionalDocumentation ?? this.additionalDocumentation,
  explanation: explanation ?? this.explanation,
  receivedAt: receivedAt ?? this.receivedAt,
  returnDescription: returnDescription ?? this.returnDescription,
  returnStatus: returnStatus ?? this.returnStatus,
  returnedAt: returnedAt ?? this.returnedAt,
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

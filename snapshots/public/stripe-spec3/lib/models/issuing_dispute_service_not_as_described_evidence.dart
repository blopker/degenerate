// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file.dart';import 'issuing_dispute_service_not_as_described_evidence_additional_documentation.dart';/// 
@immutable final class IssuingDisputeServiceNotAsDescribedEvidence {const IssuingDisputeServiceNotAsDescribedEvidence({this.additionalDocumentation = const Omittable.absent(), this.canceledAt = const Omittable.absent(), this.cancellationReason = const Omittable.absent(), this.explanation = const Omittable.absent(), this.receivedAt = const Omittable.absent(), });

factory IssuingDisputeServiceNotAsDescribedEvidence.fromJson(Map<String, dynamic> json) { return IssuingDisputeServiceNotAsDescribedEvidence(
  additionalDocumentation: json.containsKey('additional_documentation') ? Omittable(json['additional_documentation'] != null ? OneOf2.parse(json['additional_documentation'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  canceledAt: json.containsKey('canceled_at') ? Omittable(json['canceled_at'] != null ? (json['canceled_at'] as num).toInt() : null) : const Omittable.absent(),
  cancellationReason: json.containsKey('cancellation_reason') ? Omittable(json['cancellation_reason'] as String?) : const Omittable.absent(),
  explanation: json.containsKey('explanation') ? Omittable(json['explanation'] as String?) : const Omittable.absent(),
  receivedAt: json.containsKey('received_at') ? Omittable(json['received_at'] != null ? (json['received_at'] as num).toInt() : null) : const Omittable.absent(),
); }

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
final Omittable<IssuingDisputeServiceNotAsDescribedEvidenceAdditionalDocumentation?> additionalDocumentation;

/// Date when order was canceled.
final Omittable<int?> canceledAt;

/// Reason for canceling the order.
final Omittable<String?> cancellationReason;

/// Explanation of why the cardholder is disputing this transaction.
final Omittable<String?> explanation;

/// Date when the product was received.
final Omittable<int?> receivedAt;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation.isPresent) 'additional_documentation': additionalDocumentation.value?.toJson(),
  if (canceledAt.isPresent) 'canceled_at': canceledAt.value,
  if (cancellationReason.isPresent) 'cancellation_reason': cancellationReason.value,
  if (explanation.isPresent) 'explanation': explanation.value,
  if (receivedAt.isPresent) 'received_at': receivedAt.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_documentation', 'canceled_at', 'cancellation_reason', 'explanation', 'received_at'}.contains(key)); } 
IssuingDisputeServiceNotAsDescribedEvidence copyWith({Omittable<IssuingDisputeServiceNotAsDescribedEvidenceAdditionalDocumentation?>? additionalDocumentation, Omittable<int?>? canceledAt, Omittable<String?>? cancellationReason, Omittable<String?>? explanation, Omittable<int?>? receivedAt, }) { return IssuingDisputeServiceNotAsDescribedEvidence(
  additionalDocumentation: additionalDocumentation ?? this.additionalDocumentation,
  canceledAt: canceledAt ?? this.canceledAt,
  cancellationReason: cancellationReason ?? this.cancellationReason,
  explanation: explanation ?? this.explanation,
  receivedAt: receivedAt ?? this.receivedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingDisputeServiceNotAsDescribedEvidence &&
          additionalDocumentation == other.additionalDocumentation &&
          canceledAt == other.canceledAt &&
          cancellationReason == other.cancellationReason &&
          explanation == other.explanation &&
          receivedAt == other.receivedAt; } 
@override int get hashCode { return Object.hash(additionalDocumentation, canceledAt, cancellationReason, explanation, receivedAt); } 
@override String toString() { return 'IssuingDisputeServiceNotAsDescribedEvidence(additionalDocumentation: $additionalDocumentation, canceledAt: $canceledAt, cancellationReason: $cancellationReason, explanation: $explanation, receivedAt: $receivedAt)'; } 
 }

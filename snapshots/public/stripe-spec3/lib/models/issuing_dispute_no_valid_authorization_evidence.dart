// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file.dart';import 'issuing_dispute_no_valid_authorization_evidence_additional_documentation.dart';/// 
@immutable final class IssuingDisputeNoValidAuthorizationEvidence {const IssuingDisputeNoValidAuthorizationEvidence({this.additionalDocumentation = const Omittable.absent(), this.explanation = const Omittable.absent(), });

factory IssuingDisputeNoValidAuthorizationEvidence.fromJson(Map<String, dynamic> json) { return IssuingDisputeNoValidAuthorizationEvidence(
  additionalDocumentation: json.containsKey('additional_documentation') ? Omittable(json['additional_documentation'] != null ? OneOf2.parse(json['additional_documentation'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  explanation: json.containsKey('explanation') ? Omittable(json['explanation'] as String?) : const Omittable.absent(),
); }

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
final Omittable<IssuingDisputeNoValidAuthorizationEvidenceAdditionalDocumentation?> additionalDocumentation;

/// Explanation of why the cardholder is disputing this transaction.
final Omittable<String?> explanation;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation.isPresent) 'additional_documentation': additionalDocumentation.value?.toJson(),
  if (explanation.isPresent) 'explanation': explanation.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_documentation', 'explanation'}.contains(key)); } 
IssuingDisputeNoValidAuthorizationEvidence copyWith({Omittable<IssuingDisputeNoValidAuthorizationEvidenceAdditionalDocumentation?>? additionalDocumentation, Omittable<String?>? explanation, }) { return IssuingDisputeNoValidAuthorizationEvidence(
  additionalDocumentation: additionalDocumentation ?? this.additionalDocumentation,
  explanation: explanation ?? this.explanation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingDisputeNoValidAuthorizationEvidence &&
          additionalDocumentation == other.additionalDocumentation &&
          explanation == other.explanation; } 
@override int get hashCode { return Object.hash(additionalDocumentation, explanation); } 
@override String toString() { return 'IssuingDisputeNoValidAuthorizationEvidence(additionalDocumentation: $additionalDocumentation, explanation: $explanation)'; } 
 }

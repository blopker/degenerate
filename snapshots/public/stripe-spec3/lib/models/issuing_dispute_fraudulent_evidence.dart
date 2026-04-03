// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'file.dart';import 'issuing_dispute_fraudulent_evidence_additional_documentation.dart';/// 
@immutable final class IssuingDisputeFraudulentEvidence {const IssuingDisputeFraudulentEvidence({this.additionalDocumentation, this.explanation, });

factory IssuingDisputeFraudulentEvidence.fromJson(Map<String, dynamic> json) { return IssuingDisputeFraudulentEvidence(
  additionalDocumentation: json['additional_documentation'] != null ? OneOf2.parse(json['additional_documentation'], fromA: (v) => v as String, fromB: (v) => File.fromJson(v as Map<String, dynamic>),) : null,
  explanation: json['explanation'] as String?,
); }

/// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
final IssuingDisputeFraudulentEvidenceAdditionalDocumentation? additionalDocumentation;

/// Explanation of why the cardholder is disputing this transaction.
final String? explanation;

Map<String, dynamic> toJson() { return {
  if (additionalDocumentation != null) 'additional_documentation': additionalDocumentation?.toJson(),
  'explanation': ?explanation,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'additional_documentation', 'explanation'}.contains(key)); } 
IssuingDisputeFraudulentEvidence copyWith({IssuingDisputeFraudulentEvidenceAdditionalDocumentation? Function()? additionalDocumentation, String? Function()? explanation, }) { return IssuingDisputeFraudulentEvidence(
  additionalDocumentation: additionalDocumentation != null ? additionalDocumentation() : this.additionalDocumentation,
  explanation: explanation != null ? explanation() : this.explanation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingDisputeFraudulentEvidence &&
          additionalDocumentation == other.additionalDocumentation &&
          explanation == other.explanation; } 
@override int get hashCode { return Object.hash(additionalDocumentation, explanation); } 
@override String toString() { return 'IssuingDisputeFraudulentEvidence(additionalDocumentation: $additionalDocumentation, explanation: $explanation)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_charges_charge_dispute_request_evidence.dart';import 'post_charges_charge_dispute_request_metadata.dart';final class PostChargesChargeDisputeRequest {const PostChargesChargeDisputeRequest({this.evidence, this.expand, this.metadata, this.submit, });

factory PostChargesChargeDisputeRequest.fromJson(Map<String, dynamic> json) { return PostChargesChargeDisputeRequest(
  evidence: json['evidence'] != null ? PostChargesChargeDisputeRequestEvidence.fromJson(json['evidence'] as Map<String, dynamic>) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  metadata: json['metadata'] != null ? OneOf2.parse(json['metadata'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)), fromB: (v) => PostChargesChargeDisputeRequestMetadataVariant2.fromJson(v as String),) : null,
  submit: json['submit'] as bool?,
); }

/// Evidence to upload, to respond to a dispute. Updating any field in the hash will submit all fields in the hash for review. The combined character count of all fields is limited to 150,000.
final PostChargesChargeDisputeRequestEvidence? evidence;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final PostChargesChargeDisputeRequestMetadata? metadata;

/// Whether to immediately submit evidence to the bank. If `false`, evidence is staged on the dispute. Staged evidence is visible in the API and Dashboard, and can be submitted to the bank by making another request with this attribute set to `true` (the default).
final bool? submit;

Map<String, dynamic> toJson() { return {
  if (evidence != null) 'evidence': evidence?.toJson(),
  'expand': ?expand,
  if (metadata != null) 'metadata': metadata?.toJson(),
  'submit': ?submit,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostChargesChargeDisputeRequest copyWith({PostChargesChargeDisputeRequestEvidence Function()? evidence, List<String> Function()? expand, PostChargesChargeDisputeRequestMetadata Function()? metadata, bool Function()? submit, }) { return PostChargesChargeDisputeRequest(
  evidence: evidence != null ? evidence() : this.evidence,
  expand: expand != null ? expand() : this.expand,
  metadata: metadata != null ? metadata() : this.metadata,
  submit: submit != null ? submit() : this.submit,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostChargesChargeDisputeRequest &&
          evidence == other.evidence &&
          listEquals(expand, other.expand) &&
          metadata == other.metadata &&
          submit == other.submit; } 
@override int get hashCode { return Object.hash(evidence, Object.hashAll(expand ?? const []), metadata, submit); } 
@override String toString() { return 'PostChargesChargeDisputeRequest(evidence: $evidence, expand: $expand, metadata: $metadata, submit: $submit)'; } 
 }

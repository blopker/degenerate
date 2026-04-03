// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_issuing_disputes_dispute_submit_request_metadata.dart';@immutable final class PostIssuingDisputesDisputeSubmitRequest {const PostIssuingDisputesDisputeSubmitRequest({this.expand, this.metadata, });

factory PostIssuingDisputesDisputeSubmitRequest.fromJson(Map<String, dynamic> json) { return PostIssuingDisputesDisputeSubmitRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  metadata: json['metadata'] != null ? OneOf2.parse(json['metadata'], fromA: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)), fromB: (v) => PostIssuingDisputesDisputeSubmitRequestMetadataVariant2.fromJson(v as String),) : null,
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final PostIssuingDisputesDisputeSubmitRequestMetadata? metadata;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  if (metadata != null) 'metadata': metadata?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expand', 'metadata'}.contains(key)); } 
PostIssuingDisputesDisputeSubmitRequest copyWith({List<String> Function()? expand, PostIssuingDisputesDisputeSubmitRequestMetadata Function()? metadata, }) { return PostIssuingDisputesDisputeSubmitRequest(
  expand: expand != null ? expand() : this.expand,
  metadata: metadata != null ? metadata() : this.metadata,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingDisputesDisputeSubmitRequest &&
          listEquals(expand, other.expand) &&
          metadata == other.metadata; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), metadata); } 
@override String toString() { return 'PostIssuingDisputesDisputeSubmitRequest(expand: $expand, metadata: $metadata)'; } 
 }

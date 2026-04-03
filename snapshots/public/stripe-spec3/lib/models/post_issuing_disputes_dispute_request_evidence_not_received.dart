// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'not_received2.dart';@immutable final class PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2 {const PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2._(this.value);

factory PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2._(json),
}; }

static const PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2 $empty = PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2._('');

static const List<PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2($value)'; } 
 }
typedef PostIssuingDisputesDisputeRequestEvidenceNotReceived = OneOf2<NotReceived2,PostIssuingDisputesDisputeRequestEvidenceNotReceivedVariant2>;

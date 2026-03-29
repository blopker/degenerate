// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'duplicate2.dart';final class PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2 {const PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2._(this.value);

factory PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2._(json),
}; }

static const PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2 $empty = PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2._('');

static const List<PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2($value)'; } 
 }
typedef PostIssuingDisputesDisputeRequestEvidenceDuplicate = OneOf2<Duplicate2,PostIssuingDisputesDisputeRequestEvidenceDuplicateVariant2>;
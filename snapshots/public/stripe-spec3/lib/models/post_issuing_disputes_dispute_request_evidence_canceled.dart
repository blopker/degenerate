// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'canceled2.dart';@immutable final class PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2 {const PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2._(this.value);

factory PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2._(json),
}; }

static const PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2 $empty = PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2._('');

static const List<PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2($value)'; } 
 }
typedef PostIssuingDisputesDisputeRequestEvidenceCanceled = OneOf2<Canceled2,PostIssuingDisputesDisputeRequestEvidenceCanceledVariant2>;

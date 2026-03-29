// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostIssuingDisputesDisputeRequestMetadataVariant2 {const PostIssuingDisputesDisputeRequestMetadataVariant2._(this.value);

factory PostIssuingDisputesDisputeRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesDisputeRequestMetadataVariant2._(json),
}; }

static const PostIssuingDisputesDisputeRequestMetadataVariant2 $empty = PostIssuingDisputesDisputeRequestMetadataVariant2._('');

static const List<PostIssuingDisputesDisputeRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesDisputeRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesDisputeRequestMetadataVariant2($value)'; } 
 }
typedef PostIssuingDisputesDisputeRequestMetadata = OneOf2<Map<String,String>,PostIssuingDisputesDisputeRequestMetadataVariant2>;
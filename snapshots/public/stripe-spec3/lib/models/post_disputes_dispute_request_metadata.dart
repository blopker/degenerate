// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostDisputesDisputeRequestMetadataVariant2 {const PostDisputesDisputeRequestMetadataVariant2._(this.value);

factory PostDisputesDisputeRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostDisputesDisputeRequestMetadataVariant2._(json),
}; }

static const PostDisputesDisputeRequestMetadataVariant2 $empty = PostDisputesDisputeRequestMetadataVariant2._('');

static const List<PostDisputesDisputeRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostDisputesDisputeRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostDisputesDisputeRequestMetadataVariant2($value)'; } 
 }
typedef PostDisputesDisputeRequestMetadata = OneOf2<Map<String,String>,PostDisputesDisputeRequestMetadataVariant2>;

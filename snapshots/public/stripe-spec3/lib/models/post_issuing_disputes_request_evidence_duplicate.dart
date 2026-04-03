// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'duplicate.dart';@immutable final class PostIssuingDisputesRequestEvidenceDuplicateVariant2 {const PostIssuingDisputesRequestEvidenceDuplicateVariant2._(this.value);

factory PostIssuingDisputesRequestEvidenceDuplicateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesRequestEvidenceDuplicateVariant2._(json),
}; }

static const PostIssuingDisputesRequestEvidenceDuplicateVariant2 $empty = PostIssuingDisputesRequestEvidenceDuplicateVariant2._('');

static const List<PostIssuingDisputesRequestEvidenceDuplicateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesRequestEvidenceDuplicateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesRequestEvidenceDuplicateVariant2($value)'; } 
 }
typedef PostIssuingDisputesRequestEvidenceDuplicate = OneOf2<Duplicate,PostIssuingDisputesRequestEvidenceDuplicateVariant2>;

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'service_not_as_described.dart';@immutable final class PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2 {const PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2._(this.value);

factory PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2._(json),
}; }

static const PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2 $empty = PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2._('');

static const List<PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2($value)'; } 
 }
typedef PostIssuingDisputesRequestEvidenceServiceNotAsDescribed = OneOf2<ServiceNotAsDescribed,PostIssuingDisputesRequestEvidenceServiceNotAsDescribedVariant2>;

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'no_valid_authorization.dart';@immutable final class PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2 {const PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2._(this.value);

factory PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2._(json),
}; }

static const PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2 $empty = PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2._('');

static const List<PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2($value)'; } 
 }
typedef PostIssuingDisputesRequestEvidenceNoValidAuthorization = OneOf2<NoValidAuthorization,PostIssuingDisputesRequestEvidenceNoValidAuthorizationVariant2>;

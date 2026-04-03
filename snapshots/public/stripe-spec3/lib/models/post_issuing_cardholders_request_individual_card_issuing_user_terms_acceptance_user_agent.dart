// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2 {const PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2._(this.value);

factory PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2._(json),
}; }

static const PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2 $empty = PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2._('');

static const List<PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2($value)'; } 
 }
typedef PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgent = OneOf2<String,PostIssuingCardholdersRequestIndividualCardIssuingUserTermsAcceptanceUserAgentVariant2>;

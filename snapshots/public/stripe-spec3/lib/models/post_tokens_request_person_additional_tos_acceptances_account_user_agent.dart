// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2 {const PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2._(this.value);

factory PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2._(json),
}; }

static const PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2 $empty = PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2._('');

static const List<PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2($value)'; } 
 }
typedef PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgent = OneOf2<String,PostTokensRequestPersonAdditionalTosAcceptancesAccountUserAgentVariant2>;

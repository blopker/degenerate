// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2 {const PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2._(this.value);

factory PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2._(json),
}; }

static const PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2 $empty = PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2._('');

static const List<PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2($value)'; } 
 }
typedef PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgent = OneOf2<String,PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2>;
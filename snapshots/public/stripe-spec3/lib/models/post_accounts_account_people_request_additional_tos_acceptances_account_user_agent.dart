// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2 {const PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2._(this.value);

factory PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2._(json),
}; }

static const PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2 $empty = PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2._('');

static const List<PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2($value)'; } 
 }
typedef PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgent = OneOf2<String,PostAccountsAccountPeopleRequestAdditionalTosAcceptancesAccountUserAgentVariant2>;

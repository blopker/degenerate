// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2 {const PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2._(this.value);

factory PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2._(json),
}; }

static const PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2 $empty = PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2._('');

static const List<PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2($value)'; } 
 }
typedef PostAccountsAccountPeopleRequestRelationshipPercentOwnership = OneOf2<double,PostAccountsAccountPeopleRequestRelationshipPercentOwnershipVariant2>;
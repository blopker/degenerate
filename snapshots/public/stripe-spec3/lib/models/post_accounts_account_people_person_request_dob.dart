// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'date_of_birth_specs4.dart';@immutable final class PostAccountsAccountPeoplePersonRequestDobVariant2 {const PostAccountsAccountPeoplePersonRequestDobVariant2._(this.value);

factory PostAccountsAccountPeoplePersonRequestDobVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeoplePersonRequestDobVariant2._(json),
}; }

static const PostAccountsAccountPeoplePersonRequestDobVariant2 $empty = PostAccountsAccountPeoplePersonRequestDobVariant2._('');

static const List<PostAccountsAccountPeoplePersonRequestDobVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeoplePersonRequestDobVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestDobVariant2($value)'; } 
 }
typedef PostAccountsAccountPeoplePersonRequestDob = OneOf2<DateOfBirthSpecs4,PostAccountsAccountPeoplePersonRequestDobVariant2>;

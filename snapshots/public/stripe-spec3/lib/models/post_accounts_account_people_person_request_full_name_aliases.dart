// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2 {const PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2._(this.value);

factory PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2._(json),
}; }

static const PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2 $empty = PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2._('');

static const List<PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2($value)'; } 
 }
typedef PostAccountsAccountPeoplePersonRequestFullNameAliases = OneOf2<List<String>,PostAccountsAccountPeoplePersonRequestFullNameAliasesVariant2>;

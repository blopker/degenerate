// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestIndividualFullNameAliasesVariant2 {const PostAccountsRequestIndividualFullNameAliasesVariant2._(this.value);

factory PostAccountsRequestIndividualFullNameAliasesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsRequestIndividualFullNameAliasesVariant2._(json),
}; }

static const PostAccountsRequestIndividualFullNameAliasesVariant2 $empty = PostAccountsRequestIndividualFullNameAliasesVariant2._('');

static const List<PostAccountsRequestIndividualFullNameAliasesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsRequestIndividualFullNameAliasesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsRequestIndividualFullNameAliasesVariant2($value)'; } 
 }
typedef PostAccountsRequestIndividualFullNameAliases = OneOf2<List<String>,PostAccountsRequestIndividualFullNameAliasesVariant2>;

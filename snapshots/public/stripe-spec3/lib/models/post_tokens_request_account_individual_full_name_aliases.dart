// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostTokensRequestAccountIndividualFullNameAliasesVariant2 {const PostTokensRequestAccountIndividualFullNameAliasesVariant2._(this.value);

factory PostTokensRequestAccountIndividualFullNameAliasesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTokensRequestAccountIndividualFullNameAliasesVariant2._(json),
}; }

static const PostTokensRequestAccountIndividualFullNameAliasesVariant2 $empty = PostTokensRequestAccountIndividualFullNameAliasesVariant2._('');

static const List<PostTokensRequestAccountIndividualFullNameAliasesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTokensRequestAccountIndividualFullNameAliasesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTokensRequestAccountIndividualFullNameAliasesVariant2($value)'; } 
 }
typedef PostTokensRequestAccountIndividualFullNameAliases = OneOf2<List<String>,PostTokensRequestAccountIndividualFullNameAliasesVariant2>;
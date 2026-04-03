// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTokensRequestPersonFullNameAliasesVariant2 {const PostTokensRequestPersonFullNameAliasesVariant2._(this.value);

factory PostTokensRequestPersonFullNameAliasesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTokensRequestPersonFullNameAliasesVariant2._(json),
}; }

static const PostTokensRequestPersonFullNameAliasesVariant2 $empty = PostTokensRequestPersonFullNameAliasesVariant2._('');

static const List<PostTokensRequestPersonFullNameAliasesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTokensRequestPersonFullNameAliasesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTokensRequestPersonFullNameAliasesVariant2($value)'; } 
 }
typedef PostTokensRequestPersonFullNameAliases = OneOf2<List<String>,PostTokensRequestPersonFullNameAliasesVariant2>;

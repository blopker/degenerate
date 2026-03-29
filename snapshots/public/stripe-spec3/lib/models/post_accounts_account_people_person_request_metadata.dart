// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostAccountsAccountPeoplePersonRequestMetadataVariant2 {const PostAccountsAccountPeoplePersonRequestMetadataVariant2._(this.value);

factory PostAccountsAccountPeoplePersonRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeoplePersonRequestMetadataVariant2._(json),
}; }

static const PostAccountsAccountPeoplePersonRequestMetadataVariant2 $empty = PostAccountsAccountPeoplePersonRequestMetadataVariant2._('');

static const List<PostAccountsAccountPeoplePersonRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeoplePersonRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestMetadataVariant2($value)'; } 
 }
typedef PostAccountsAccountPeoplePersonRequestMetadata = OneOf2<Map<String,String>,PostAccountsAccountPeoplePersonRequestMetadataVariant2>;
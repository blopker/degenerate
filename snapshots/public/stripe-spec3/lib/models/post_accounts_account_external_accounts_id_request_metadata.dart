// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostAccountsAccountExternalAccountsIdRequestMetadataVariant2 {const PostAccountsAccountExternalAccountsIdRequestMetadataVariant2._(this.value);

factory PostAccountsAccountExternalAccountsIdRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountExternalAccountsIdRequestMetadataVariant2._(json),
}; }

static const PostAccountsAccountExternalAccountsIdRequestMetadataVariant2 $empty = PostAccountsAccountExternalAccountsIdRequestMetadataVariant2._('');

static const List<PostAccountsAccountExternalAccountsIdRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountExternalAccountsIdRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountExternalAccountsIdRequestMetadataVariant2($value)'; } 
 }
typedef PostAccountsAccountExternalAccountsIdRequestMetadata = OneOf2<Map<String,String>,PostAccountsAccountExternalAccountsIdRequestMetadataVariant2>;
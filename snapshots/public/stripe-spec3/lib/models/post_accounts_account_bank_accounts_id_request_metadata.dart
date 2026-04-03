// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountBankAccountsIdRequestMetadataVariant2 {const PostAccountsAccountBankAccountsIdRequestMetadataVariant2._(this.value);

factory PostAccountsAccountBankAccountsIdRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountBankAccountsIdRequestMetadataVariant2._(json),
}; }

static const PostAccountsAccountBankAccountsIdRequestMetadataVariant2 $empty = PostAccountsAccountBankAccountsIdRequestMetadataVariant2._('');

static const List<PostAccountsAccountBankAccountsIdRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountBankAccountsIdRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountBankAccountsIdRequestMetadataVariant2($value)'; } 
 }
typedef PostAccountsAccountBankAccountsIdRequestMetadata = OneOf2<Map<String,String>,PostAccountsAccountBankAccountsIdRequestMetadataVariant2>;

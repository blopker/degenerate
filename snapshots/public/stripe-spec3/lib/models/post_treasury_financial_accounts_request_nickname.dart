// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostTreasuryFinancialAccountsRequestNicknameVariant2 {const PostTreasuryFinancialAccountsRequestNicknameVariant2._(this.value);

factory PostTreasuryFinancialAccountsRequestNicknameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTreasuryFinancialAccountsRequestNicknameVariant2._(json),
}; }

static const PostTreasuryFinancialAccountsRequestNicknameVariant2 $empty = PostTreasuryFinancialAccountsRequestNicknameVariant2._('');

static const List<PostTreasuryFinancialAccountsRequestNicknameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTreasuryFinancialAccountsRequestNicknameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTreasuryFinancialAccountsRequestNicknameVariant2($value)'; } 
 }
typedef PostTreasuryFinancialAccountsRequestNickname = OneOf2<String,PostTreasuryFinancialAccountsRequestNicknameVariant2>;
// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTreasuryFinancialAccountsRequestNicknameVariant2 {const PostTreasuryFinancialAccountsRequestNicknameVariant2._(this.value);

factory PostTreasuryFinancialAccountsRequestNicknameVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostTreasuryFinancialAccountsRequestNicknameVariant2._(json),
};}

static const PostTreasuryFinancialAccountsRequestNicknameVariant2 $empty = PostTreasuryFinancialAccountsRequestNicknameVariant2._('');

static const List<PostTreasuryFinancialAccountsRequestNicknameVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostTreasuryFinancialAccountsRequestNicknameVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostTreasuryFinancialAccountsRequestNicknameVariant2($value)';}
}
/// The nickname for the FinancialAccount.
@immutable
final class PostTreasuryFinancialAccountsRequestNickname {
  const PostTreasuryFinancialAccountsRequestNickname({this.string = const Omittable.absent(),
this.postTreasuryFinancialAccountsRequestNicknameVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTreasuryFinancialAccountsRequestNickname._({required this.rawValue, required this.string,
required this.postTreasuryFinancialAccountsRequestNicknameVariant2,});
  factory PostTreasuryFinancialAccountsRequestNickname.fromJson(Object? json) => PostTreasuryFinancialAccountsRequestNickname._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postTreasuryFinancialAccountsRequestNicknameVariant2: parseAnyOfVariant<PostTreasuryFinancialAccountsRequestNicknameVariant2>(json, (value) => PostTreasuryFinancialAccountsRequestNicknameVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostTreasuryFinancialAccountsRequestNicknameVariant2> postTreasuryFinancialAccountsRequestNicknameVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postTreasuryFinancialAccountsRequestNicknameVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postTreasuryFinancialAccountsRequestNicknameVariant2.isPresent) postTreasuryFinancialAccountsRequestNicknameVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTreasuryFinancialAccountsRequestNickname && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTreasuryFinancialAccountsRequestNickname(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2 {const PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2._(this.value);

factory PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2._(json),
};}

static const PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2 $empty = PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2._('');

static const List<PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2($value)';}
}

@immutable
final class PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKana {
  const PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKana({this.string = const Omittable.absent(),
this.postAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKana._({required this.rawValue, required this.string,
required this.postAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2,});
  factory PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKana.fromJson(Object? json) => PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKana._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2: parseAnyOfVariant<PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2>(json, (value) => PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2> postAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2.isPresent) postAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKana && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKana(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2 {const PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2._(this.value);

factory PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2._(json),
};}

static const PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2 $empty = PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2._('');

static const List<PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2($value)';}
}

@immutable
final class PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanji {
  const PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanji({this.string = const Omittable.absent(),
this.postAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanji._({required this.rawValue, required this.string,
required this.postAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2,});
  factory PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanji.fromJson(Object? json) => PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanji._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2: parseAnyOfVariant<PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2>(json, (value) => PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2> postAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2.isPresent) postAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanji && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountRequestSettingsCardPaymentsStatementDescriptorPrefixKanji(${toJson()})';
}

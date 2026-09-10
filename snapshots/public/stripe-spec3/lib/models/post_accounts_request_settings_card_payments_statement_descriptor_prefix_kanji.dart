// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2 {const PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2._(this.value);

factory PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2._(json),
}; }

static const PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2 $empty = PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2._('');

static const List<PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2($value)'; } 
 }

@immutable
final class PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanji {
  const PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanji({this.string = const Omittable.absent(),
this.postAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanji._({required this.rawValue, required this.string,
required this.postAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2,});
  factory PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanji.fromJson(Object? json) => PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanji._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2: parseAnyOfVariant<PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2>(json, (value) => PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2> postAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2.isPresent) postAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanji && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanji(${toJson()})';
}

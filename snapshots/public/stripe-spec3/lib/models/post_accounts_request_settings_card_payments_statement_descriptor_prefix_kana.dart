// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2 {const PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2._(this.value);

factory PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2._(json),
}; }

static const PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2 $empty = PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2._('');

static const List<PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2($value)'; } 
 }

@immutable
final class PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKana {
  const PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKana({this.string = const Omittable.absent(),
this.postAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKana._({required this.rawValue, required this.string,
required this.postAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2,});
  factory PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKana.fromJson(Object? json) => PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKana._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2: parseAnyOfVariant<PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2>(json, (value) => PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2> postAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2.isPresent) postAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKana && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKana(${toJson()})';
}

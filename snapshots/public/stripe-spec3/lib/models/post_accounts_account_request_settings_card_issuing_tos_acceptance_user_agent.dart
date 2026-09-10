// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2 {const PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2._(this.value);

factory PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2._(json),
}; }

static const PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2 $empty = PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2._('');

static const List<PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2($value)'; } 
 }

@immutable
final class PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgent {
  const PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgent({this.string = const Omittable.absent(),
this.postAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgent._({required this.rawValue, required this.string,
required this.postAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2,});
  factory PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgent.fromJson(Object? json) => PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2: parseAnyOfVariant<PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2>(json, (value) => PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2> postAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2.isPresent) postAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountRequestSettingsCardIssuingTosAcceptanceUserAgent(${toJson()})';
}

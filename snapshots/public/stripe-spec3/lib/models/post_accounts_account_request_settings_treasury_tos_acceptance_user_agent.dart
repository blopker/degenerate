// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2 {const PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2._(this.value);

factory PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2._(json),
}; }

static const PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2 $empty = PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2._('');

static const List<PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2($value)'; } 
 }

@immutable
final class PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgent {
  const PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgent({this.string = const Omittable.absent(),
this.postAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgent._({required this.rawValue, required this.string,
required this.postAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2,});
  factory PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgent.fromJson(Object? json) => PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2: parseAnyOfVariant<PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2>(json, (value) => PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2> postAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2.isPresent) postAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountRequestSettingsTreasuryTosAcceptanceUserAgent(${toJson()})';
}

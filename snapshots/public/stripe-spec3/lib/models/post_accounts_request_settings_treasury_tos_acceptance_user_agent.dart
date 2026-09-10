// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2 {const PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2._(this.value);

factory PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2._(json),
}; }

static const PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2 $empty = PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2._('');

static const List<PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2($value)'; } 
 }

@immutable
final class PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgent {
  const PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgent({this.string = const Omittable.absent(),
this.postAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgent._({required this.rawValue, required this.string,
required this.postAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2,});
  factory PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgent.fromJson(Object? json) => PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2: parseAnyOfVariant<PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2>(json, (value) => PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2> postAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2.isPresent) postAccountsRequestSettingsTreasuryTosAcceptanceUserAgentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsRequestSettingsTreasuryTosAcceptanceUserAgent(${toJson()})';
}

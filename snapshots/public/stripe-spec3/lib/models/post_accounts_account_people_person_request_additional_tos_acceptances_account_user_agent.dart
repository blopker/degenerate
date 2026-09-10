// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2 {const PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2._(this.value);

factory PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2._(json),
}; }

static const PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2 $empty = PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2._('');

static const List<PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2($value)'; } 
 }

@immutable
final class PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgent {
  const PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgent({this.string = const Omittable.absent(),
this.postAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgent._({required this.rawValue, required this.string,
required this.postAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2,});
  factory PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgent.fromJson(Object? json) => PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2: parseAnyOfVariant<PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2>(json, (value) => PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2> postAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2.isPresent) postAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccountUserAgent(${toJson()})';
}

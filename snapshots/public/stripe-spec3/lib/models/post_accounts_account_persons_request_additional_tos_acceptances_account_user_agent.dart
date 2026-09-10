// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2 {const PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2._(this.value);

factory PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2._(json),
}; }

static const PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2 $empty = PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2._('');

static const List<PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2($value)'; } 
 }

@immutable
final class PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgent {
  const PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgent({this.string = const Omittable.absent(),
this.postAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgent._({required this.rawValue, required this.string,
required this.postAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2,});
  factory PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgent.fromJson(Object? json) => PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2: parseAnyOfVariant<PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2>(json, (value) => PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2> postAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2.isPresent) postAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccountUserAgent(${toJson()})';
}

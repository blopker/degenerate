// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2 {const PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2._(this.value);

factory PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2._(json),
}; }

static const PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2 $empty = PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2._('');

static const List<PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2($value)'; } 
 }

@immutable
final class PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgent {
  const PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgent({this.string = const Omittable.absent(),
this.postAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgent._({required this.rawValue, required this.string,
required this.postAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2,});
  factory PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgent.fromJson(Object? json) => PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgent._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
postAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2: parseAnyOfVariant<PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2>(json, (value) => PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2> postAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || postAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (postAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2.isPresent) postAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgent && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccountUserAgent(${toJson()})';
}

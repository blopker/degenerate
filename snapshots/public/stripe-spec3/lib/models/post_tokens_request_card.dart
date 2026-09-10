// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'credit_card_specs.dart';/// The card this token will represent. If you also pass in a customer, the card must be the ID of a card belonging to the customer. Otherwise, if you do not pass in a customer, this is a dictionary containing a user's credit card details, with the options described below.
@immutable
final class PostTokensRequestCard {
  const PostTokensRequestCard({this.creditCardSpecs = const Omittable.absent(),
this.string = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostTokensRequestCard._({required this.rawValue, required this.creditCardSpecs,
required this.string,});
  factory PostTokensRequestCard.fromJson(Object? json) => PostTokensRequestCard._(
    rawValue: Omittable(json),
    creditCardSpecs: parseAnyOfVariant<CreditCardSpecs>(json, (value) => CreditCardSpecs.fromJson(value! as Map<String, dynamic>)),
string: parseAnyOfVariant<String>(json, (value) => value! as String),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<CreditCardSpecs> creditCardSpecs;
final Omittable<String> string;

  /// Whether at least one known variant matched.
  bool get isValid => creditCardSpecs.isPresent || string.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (creditCardSpecs.isPresent) creditCardSpecs.value?.toJson(),
if (string.isPresent) string.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostTokensRequestCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostTokensRequestCard(${toJson()})';
}

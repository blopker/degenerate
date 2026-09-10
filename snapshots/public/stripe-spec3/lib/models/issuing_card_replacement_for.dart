// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_card.dart';/// The card this card replaces, if any.
@immutable
final class IssuingCardReplacementFor {
  const IssuingCardReplacementFor({this.string = const Omittable.absent(),
this.issuingCard = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const IssuingCardReplacementFor._({required this.rawValue, required this.string,
required this.issuingCard,});
  factory IssuingCardReplacementFor.fromJson(Object? json) => IssuingCardReplacementFor._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
issuingCard: parseAnyOfVariant<IssuingCard>(json, (value) => IssuingCard.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<IssuingCard> issuingCard;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || issuingCard.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (issuingCard.isPresent) issuingCard.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is IssuingCardReplacementFor && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'IssuingCardReplacementFor(${toJson()})';
}

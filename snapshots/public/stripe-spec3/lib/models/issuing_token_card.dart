// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_card.dart';/// Card associated with this token.
@immutable
final class IssuingTokenCard {
  const IssuingTokenCard({this.string = const Omittable.absent(),
this.issuingCard = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const IssuingTokenCard._({required this.rawValue, required this.string,
required this.issuingCard,});
  factory IssuingTokenCard.fromJson(Object? json) => IssuingTokenCard._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
issuingCard: parseAnyOfVariant<IssuingCard>(json, (value) => IssuingCard.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<IssuingCard> issuingCard;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || issuingCard.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (issuingCard.isPresent) issuingCard.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is IssuingTokenCard && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'IssuingTokenCard(${toJson()})';
}

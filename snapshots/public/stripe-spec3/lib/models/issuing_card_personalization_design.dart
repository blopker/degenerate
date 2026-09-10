// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_personalization_design.dart';/// The personalization design object belonging to this card.
@immutable
final class IssuingCardPersonalizationDesign {
  const IssuingCardPersonalizationDesign({this.string = const Omittable.absent(),
this.issuingPersonalizationDesign = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const IssuingCardPersonalizationDesign._({required this.rawValue, required this.string,
required this.issuingPersonalizationDesign,});
  factory IssuingCardPersonalizationDesign.fromJson(Object? json) => IssuingCardPersonalizationDesign._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
issuingPersonalizationDesign: parseAnyOfVariant<IssuingPersonalizationDesign>(json, (value) => IssuingPersonalizationDesign.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<IssuingPersonalizationDesign> issuingPersonalizationDesign;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || issuingPersonalizationDesign.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (issuingPersonalizationDesign.isPresent) issuingPersonalizationDesign.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is IssuingCardPersonalizationDesign && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'IssuingCardPersonalizationDesign(${toJson()})';
}

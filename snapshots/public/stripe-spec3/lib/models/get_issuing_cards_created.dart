// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs24.dart';
@immutable
final class GetIssuingCardsCreated {
  const GetIssuingCardsCreated({this.rangeQuerySpecs24 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetIssuingCardsCreated._({required this.rawValue, required this.rangeQuerySpecs24,
required this.$int,});
  factory GetIssuingCardsCreated.fromJson(Object? json) => GetIssuingCardsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs24: parseAnyOfVariant<RangeQuerySpecs24>(json, (value) => RangeQuerySpecs24.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs24> rangeQuerySpecs24;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs24.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs24.isPresent) rangeQuerySpecs24.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetIssuingCardsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetIssuingCardsCreated(${toJson()})';
}

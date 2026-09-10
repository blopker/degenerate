// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs52.dart';
@immutable
final class GetTopupsAmount {
  const GetTopupsAmount({this.rangeQuerySpecs52 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetTopupsAmount._({required this.rawValue, required this.rangeQuerySpecs52,
required this.$int,});
  factory GetTopupsAmount.fromJson(Object? json) => GetTopupsAmount._(
    rawValue: Omittable(json),
    rangeQuerySpecs52: parseAnyOfVariant<RangeQuerySpecs52>(json, (value) => RangeQuerySpecs52.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs52> rangeQuerySpecs52;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs52.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs52.isPresent) rangeQuerySpecs52.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetTopupsAmount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetTopupsAmount(${toJson()})';
}

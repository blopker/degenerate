// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs29.dart';
@immutable
final class GetPayoutsArrivalDate {
  const GetPayoutsArrivalDate({this.rangeQuerySpecs29 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetPayoutsArrivalDate._({required this.rawValue, required this.rangeQuerySpecs29,
required this.$int,});
  factory GetPayoutsArrivalDate.fromJson(Object? json) => GetPayoutsArrivalDate._(
    rawValue: Omittable(json),
    rangeQuerySpecs29: parseAnyOfVariant<RangeQuerySpecs29>(json, (value) => RangeQuerySpecs29.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs29> rangeQuerySpecs29;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs29.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs29.isPresent) rangeQuerySpecs29.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetPayoutsArrivalDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetPayoutsArrivalDate(${toJson()})';
}

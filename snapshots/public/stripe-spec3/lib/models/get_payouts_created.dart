// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs30.dart';
@immutable
final class GetPayoutsCreated {
  const GetPayoutsCreated({this.rangeQuerySpecs30 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetPayoutsCreated._({required this.rawValue, required this.rangeQuerySpecs30,
required this.$int,});
  factory GetPayoutsCreated.fromJson(Object? json) => GetPayoutsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs30: parseAnyOfVariant<RangeQuerySpecs30>(json, (value) => RangeQuerySpecs30.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs30> rangeQuerySpecs30;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs30.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs30.isPresent) rangeQuerySpecs30.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetPayoutsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetPayoutsCreated(${toJson()})';
}

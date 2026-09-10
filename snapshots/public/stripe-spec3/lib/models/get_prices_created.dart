// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs32.dart';
@immutable
final class GetPricesCreated {
  const GetPricesCreated({this.rangeQuerySpecs32 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetPricesCreated._({required this.rawValue, required this.rangeQuerySpecs32,
required this.$int,});
  factory GetPricesCreated.fromJson(Object? json) => GetPricesCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs32: parseAnyOfVariant<RangeQuerySpecs32>(json, (value) => RangeQuerySpecs32.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs32> rangeQuerySpecs32;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs32.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs32.isPresent) rangeQuerySpecs32.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetPricesCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetPricesCreated(${toJson()})';
}

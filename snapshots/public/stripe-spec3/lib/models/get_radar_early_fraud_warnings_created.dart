// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs35.dart';
@immutable
final class GetRadarEarlyFraudWarningsCreated {
  const GetRadarEarlyFraudWarningsCreated({this.rangeQuerySpecs35 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetRadarEarlyFraudWarningsCreated._({required this.rawValue, required this.rangeQuerySpecs35,
required this.$int,});
  factory GetRadarEarlyFraudWarningsCreated.fromJson(Object? json) => GetRadarEarlyFraudWarningsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs35: parseAnyOfVariant<RangeQuerySpecs35>(json, (value) => RangeQuerySpecs35.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs35> rangeQuerySpecs35;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs35.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs35.isPresent) rangeQuerySpecs35.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetRadarEarlyFraudWarningsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetRadarEarlyFraudWarningsCreated(${toJson()})';
}

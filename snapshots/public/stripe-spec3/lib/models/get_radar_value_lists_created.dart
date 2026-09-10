// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs37.dart';
@immutable
final class GetRadarValueListsCreated {
  const GetRadarValueListsCreated({this.rangeQuerySpecs37 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetRadarValueListsCreated._({required this.rawValue, required this.rangeQuerySpecs37,
required this.$int,});
  factory GetRadarValueListsCreated.fromJson(Object? json) => GetRadarValueListsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs37: parseAnyOfVariant<RangeQuerySpecs37>(json, (value) => RangeQuerySpecs37.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs37> rangeQuerySpecs37;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs37.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs37.isPresent) rangeQuerySpecs37.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetRadarValueListsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetRadarValueListsCreated(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs50.dart';
@immutable
final class GetSubscriptionsCurrentPeriodStart {
  const GetSubscriptionsCurrentPeriodStart({this.rangeQuerySpecs50 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetSubscriptionsCurrentPeriodStart._({required this.rawValue, required this.rangeQuerySpecs50,
required this.$int,});
  factory GetSubscriptionsCurrentPeriodStart.fromJson(Object? json) => GetSubscriptionsCurrentPeriodStart._(
    rawValue: Omittable(json),
    rangeQuerySpecs50: parseAnyOfVariant<RangeQuerySpecs50>(json, (value) => RangeQuerySpecs50.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs50> rangeQuerySpecs50;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs50.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs50.isPresent) rangeQuerySpecs50.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetSubscriptionsCurrentPeriodStart && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetSubscriptionsCurrentPeriodStart(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs47.dart';
@immutable
final class GetSubscriptionSchedulesReleasedAt {
  const GetSubscriptionSchedulesReleasedAt({this.rangeQuerySpecs47 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetSubscriptionSchedulesReleasedAt._({required this.rawValue, required this.rangeQuerySpecs47,
required this.$int,});
  factory GetSubscriptionSchedulesReleasedAt.fromJson(Object? json) => GetSubscriptionSchedulesReleasedAt._(
    rawValue: Omittable(json),
    rangeQuerySpecs47: parseAnyOfVariant<RangeQuerySpecs47>(json, (value) => RangeQuerySpecs47.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs47> rangeQuerySpecs47;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs47.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs47.isPresent) rangeQuerySpecs47.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetSubscriptionSchedulesReleasedAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetSubscriptionSchedulesReleasedAt(${toJson()})';
}

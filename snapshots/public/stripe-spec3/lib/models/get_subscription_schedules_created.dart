// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs46.dart';
@immutable
final class GetSubscriptionSchedulesCreated {
  const GetSubscriptionSchedulesCreated({this.rangeQuerySpecs46 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetSubscriptionSchedulesCreated._({required this.rawValue, required this.rangeQuerySpecs46,
required this.$int,});
  factory GetSubscriptionSchedulesCreated.fromJson(Object? json) => GetSubscriptionSchedulesCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs46: parseAnyOfVariant<RangeQuerySpecs46>(json, (value) => RangeQuerySpecs46.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs46> rangeQuerySpecs46;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs46.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs46.isPresent) rangeQuerySpecs46.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetSubscriptionSchedulesCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetSubscriptionSchedulesCreated(${toJson()})';
}

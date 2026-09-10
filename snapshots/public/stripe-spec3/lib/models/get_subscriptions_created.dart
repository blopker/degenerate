// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs48.dart';
@immutable
final class GetSubscriptionsCreated {
  const GetSubscriptionsCreated({this.rangeQuerySpecs48 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetSubscriptionsCreated._({required this.rawValue, required this.rangeQuerySpecs48,
required this.$int,});
  factory GetSubscriptionsCreated.fromJson(Object? json) => GetSubscriptionsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs48: parseAnyOfVariant<RangeQuerySpecs48>(json, (value) => RangeQuerySpecs48.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs48> rangeQuerySpecs48;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs48.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs48.isPresent) rangeQuerySpecs48.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetSubscriptionsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetSubscriptionsCreated(${toJson()})';
}

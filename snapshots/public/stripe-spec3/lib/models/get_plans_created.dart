// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs31.dart';
@immutable
final class GetPlansCreated {
  const GetPlansCreated({this.rangeQuerySpecs31 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetPlansCreated._({required this.rawValue, required this.rangeQuerySpecs31,
required this.$int,});
  factory GetPlansCreated.fromJson(Object? json) => GetPlansCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs31: parseAnyOfVariant<RangeQuerySpecs31>(json, (value) => RangeQuerySpecs31.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs31> rangeQuerySpecs31;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs31.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs31.isPresent) rangeQuerySpecs31.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetPlansCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetPlansCreated(${toJson()})';
}

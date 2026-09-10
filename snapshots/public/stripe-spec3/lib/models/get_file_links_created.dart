// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs13.dart';
@immutable
final class GetFileLinksCreated {
  const GetFileLinksCreated({this.rangeQuerySpecs13 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetFileLinksCreated._({required this.rawValue, required this.rangeQuerySpecs13,
required this.$int,});
  factory GetFileLinksCreated.fromJson(Object? json) => GetFileLinksCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs13: parseAnyOfVariant<RangeQuerySpecs13>(json, (value) => RangeQuerySpecs13.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs13> rangeQuerySpecs13;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs13.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs13.isPresent) rangeQuerySpecs13.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetFileLinksCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetFileLinksCreated(${toJson()})';
}

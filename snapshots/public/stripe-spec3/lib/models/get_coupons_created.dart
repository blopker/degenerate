// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs7.dart';
@immutable
final class GetCouponsCreated {
  const GetCouponsCreated({this.rangeQuerySpecs7 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetCouponsCreated._({required this.rawValue, required this.rangeQuerySpecs7,
required this.$int,});
  factory GetCouponsCreated.fromJson(Object? json) => GetCouponsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs7: parseAnyOfVariant<RangeQuerySpecs7>(json, (value) => RangeQuerySpecs7.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs7> rangeQuerySpecs7;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs7.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs7.isPresent) rangeQuerySpecs7.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetCouponsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetCouponsCreated(${toJson()})';
}

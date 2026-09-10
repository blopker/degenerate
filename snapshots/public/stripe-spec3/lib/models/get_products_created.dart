// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs33.dart';
@immutable
final class GetProductsCreated {
  const GetProductsCreated({this.rangeQuerySpecs33 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetProductsCreated._({required this.rawValue, required this.rangeQuerySpecs33,
required this.$int,});
  factory GetProductsCreated.fromJson(Object? json) => GetProductsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs33: parseAnyOfVariant<RangeQuerySpecs33>(json, (value) => RangeQuerySpecs33.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs33> rangeQuerySpecs33;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs33.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs33.isPresent) rangeQuerySpecs33.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetProductsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetProductsCreated(${toJson()})';
}

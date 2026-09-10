// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs28.dart';
@immutable
final class GetPaymentIntentsCreated {
  const GetPaymentIntentsCreated({this.rangeQuerySpecs28 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetPaymentIntentsCreated._({required this.rawValue, required this.rangeQuerySpecs28,
required this.$int,});
  factory GetPaymentIntentsCreated.fromJson(Object? json) => GetPaymentIntentsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs28: parseAnyOfVariant<RangeQuerySpecs28>(json, (value) => RangeQuerySpecs28.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs28> rangeQuerySpecs28;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs28.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs28.isPresent) rangeQuerySpecs28.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetPaymentIntentsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetPaymentIntentsCreated(${toJson()})';
}

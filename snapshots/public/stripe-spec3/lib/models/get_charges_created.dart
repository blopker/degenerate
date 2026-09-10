// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs5.dart';
@immutable
final class GetChargesCreated {
  const GetChargesCreated({this.rangeQuerySpecs5 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetChargesCreated._({required this.rawValue, required this.rangeQuerySpecs5,
required this.$int,});
  factory GetChargesCreated.fromJson(Object? json) => GetChargesCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs5: parseAnyOfVariant<RangeQuerySpecs5>(json, (value) => RangeQuerySpecs5.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs5> rangeQuerySpecs5;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs5.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs5.isPresent) rangeQuerySpecs5.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetChargesCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetChargesCreated(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs42.dart';
@immutable
final class GetSetupIntentsCreated {
  const GetSetupIntentsCreated({this.rangeQuerySpecs42 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetSetupIntentsCreated._({required this.rawValue, required this.rangeQuerySpecs42,
required this.$int,});
  factory GetSetupIntentsCreated.fromJson(Object? json) => GetSetupIntentsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs42: parseAnyOfVariant<RangeQuerySpecs42>(json, (value) => RangeQuerySpecs42.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs42> rangeQuerySpecs42;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs42.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs42.isPresent) rangeQuerySpecs42.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetSetupIntentsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetSetupIntentsCreated(${toJson()})';
}

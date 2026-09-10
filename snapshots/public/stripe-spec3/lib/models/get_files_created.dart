// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs14.dart';
@immutable
final class GetFilesCreated {
  const GetFilesCreated({this.rangeQuerySpecs14 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetFilesCreated._({required this.rawValue, required this.rangeQuerySpecs14,
required this.$int,});
  factory GetFilesCreated.fromJson(Object? json) => GetFilesCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs14: parseAnyOfVariant<RangeQuerySpecs14>(json, (value) => RangeQuerySpecs14.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs14> rangeQuerySpecs14;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs14.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs14.isPresent) rangeQuerySpecs14.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetFilesCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetFilesCreated(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs53.dart';
@immutable
final class GetTopupsCreated {
  const GetTopupsCreated({this.rangeQuerySpecs53 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetTopupsCreated._({required this.rawValue, required this.rangeQuerySpecs53,
required this.$int,});
  factory GetTopupsCreated.fromJson(Object? json) => GetTopupsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs53: parseAnyOfVariant<RangeQuerySpecs53>(json, (value) => RangeQuerySpecs53.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs53> rangeQuerySpecs53;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs53.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs53.isPresent) rangeQuerySpecs53.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetTopupsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetTopupsCreated(${toJson()})';
}

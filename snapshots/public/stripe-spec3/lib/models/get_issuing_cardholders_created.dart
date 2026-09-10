// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs23.dart';
@immutable
final class GetIssuingCardholdersCreated {
  const GetIssuingCardholdersCreated({this.rangeQuerySpecs23 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetIssuingCardholdersCreated._({required this.rawValue, required this.rangeQuerySpecs23,
required this.$int,});
  factory GetIssuingCardholdersCreated.fromJson(Object? json) => GetIssuingCardholdersCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs23: parseAnyOfVariant<RangeQuerySpecs23>(json, (value) => RangeQuerySpecs23.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs23> rangeQuerySpecs23;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs23.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs23.isPresent) rangeQuerySpecs23.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetIssuingCardholdersCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetIssuingCardholdersCreated(${toJson()})';
}

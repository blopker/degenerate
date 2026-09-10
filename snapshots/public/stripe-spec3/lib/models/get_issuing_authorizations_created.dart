// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs22.dart';
@immutable
final class GetIssuingAuthorizationsCreated {
  const GetIssuingAuthorizationsCreated({this.rangeQuerySpecs22 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetIssuingAuthorizationsCreated._({required this.rawValue, required this.rangeQuerySpecs22,
required this.$int,});
  factory GetIssuingAuthorizationsCreated.fromJson(Object? json) => GetIssuingAuthorizationsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs22: parseAnyOfVariant<RangeQuerySpecs22>(json, (value) => RangeQuerySpecs22.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs22> rangeQuerySpecs22;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs22.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs22.isPresent) rangeQuerySpecs22.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetIssuingAuthorizationsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetIssuingAuthorizationsCreated(${toJson()})';
}

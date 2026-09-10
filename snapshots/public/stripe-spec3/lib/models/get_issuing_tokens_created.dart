// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs26.dart';
@immutable
final class GetIssuingTokensCreated {
  const GetIssuingTokensCreated({this.rangeQuerySpecs26 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetIssuingTokensCreated._({required this.rawValue, required this.rangeQuerySpecs26,
required this.$int,});
  factory GetIssuingTokensCreated.fromJson(Object? json) => GetIssuingTokensCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs26: parseAnyOfVariant<RangeQuerySpecs26>(json, (value) => RangeQuerySpecs26.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs26> rangeQuerySpecs26;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs26.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs26.isPresent) rangeQuerySpecs26.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetIssuingTokensCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetIssuingTokensCreated(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs3.dart';
@immutable
final class GetBalanceHistoryCreated {
  const GetBalanceHistoryCreated({this.rangeQuerySpecs3 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetBalanceHistoryCreated._({required this.rawValue, required this.rangeQuerySpecs3,
required this.$int,});
  factory GetBalanceHistoryCreated.fromJson(Object? json) => GetBalanceHistoryCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs3: parseAnyOfVariant<RangeQuerySpecs3>(json, (value) => RangeQuerySpecs3.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs3> rangeQuerySpecs3;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs3.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs3.isPresent) rangeQuerySpecs3.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetBalanceHistoryCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetBalanceHistoryCreated(${toJson()})';
}

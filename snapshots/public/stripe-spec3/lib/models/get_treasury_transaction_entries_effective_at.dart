// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs58.dart';
@immutable
final class GetTreasuryTransactionEntriesEffectiveAt {
  const GetTreasuryTransactionEntriesEffectiveAt({this.rangeQuerySpecs58 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetTreasuryTransactionEntriesEffectiveAt._({required this.rawValue, required this.rangeQuerySpecs58,
required this.$int,});
  factory GetTreasuryTransactionEntriesEffectiveAt.fromJson(Object? json) => GetTreasuryTransactionEntriesEffectiveAt._(
    rawValue: Omittable(json),
    rangeQuerySpecs58: parseAnyOfVariant<RangeQuerySpecs58>(json, (value) => RangeQuerySpecs58.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs58> rangeQuerySpecs58;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs58.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs58.isPresent) rangeQuerySpecs58.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetTreasuryTransactionEntriesEffectiveAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetTreasuryTransactionEntriesEffectiveAt(${toJson()})';
}

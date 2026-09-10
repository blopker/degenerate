// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs60.dart';
@immutable
final class GetTreasuryTransactionsStatusTransitionsPostedAt {
  const GetTreasuryTransactionsStatusTransitionsPostedAt({this.rangeQuerySpecs60 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetTreasuryTransactionsStatusTransitionsPostedAt._({required this.rawValue, required this.rangeQuerySpecs60,
required this.$int,});
  factory GetTreasuryTransactionsStatusTransitionsPostedAt.fromJson(Object? json) => GetTreasuryTransactionsStatusTransitionsPostedAt._(
    rawValue: Omittable(json),
    rangeQuerySpecs60: parseAnyOfVariant<RangeQuerySpecs60>(json, (value) => RangeQuerySpecs60.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs60> rangeQuerySpecs60;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs60.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs60.isPresent) rangeQuerySpecs60.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetTreasuryTransactionsStatusTransitionsPostedAt && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetTreasuryTransactionsStatusTransitionsPostedAt(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs4.dart';
@immutable
final class GetBalanceTransactionsCreated {
  const GetBalanceTransactionsCreated({this.rangeQuerySpecs4 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetBalanceTransactionsCreated._({required this.rawValue, required this.rangeQuerySpecs4,
required this.$int,});
  factory GetBalanceTransactionsCreated.fromJson(Object? json) => GetBalanceTransactionsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs4: parseAnyOfVariant<RangeQuerySpecs4>(json, (value) => RangeQuerySpecs4.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs4> rangeQuerySpecs4;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs4.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs4.isPresent) rangeQuerySpecs4.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetBalanceTransactionsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetBalanceTransactionsCreated(${toJson()})';
}

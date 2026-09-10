// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs27.dart';
@immutable
final class GetIssuingTransactionsCreated {
  const GetIssuingTransactionsCreated({this.rangeQuerySpecs27 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetIssuingTransactionsCreated._({required this.rawValue, required this.rangeQuerySpecs27,
required this.$int,});
  factory GetIssuingTransactionsCreated.fromJson(Object? json) => GetIssuingTransactionsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs27: parseAnyOfVariant<RangeQuerySpecs27>(json, (value) => RangeQuerySpecs27.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs27> rangeQuerySpecs27;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs27.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs27.isPresent) rangeQuerySpecs27.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetIssuingTransactionsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetIssuingTransactionsCreated(${toJson()})';
}

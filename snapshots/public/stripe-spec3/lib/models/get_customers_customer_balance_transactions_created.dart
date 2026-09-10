// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs10.dart';
@immutable
final class GetCustomersCustomerBalanceTransactionsCreated {
  const GetCustomersCustomerBalanceTransactionsCreated({this.rangeQuerySpecs10 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetCustomersCustomerBalanceTransactionsCreated._({required this.rawValue, required this.rangeQuerySpecs10,
required this.$int,});
  factory GetCustomersCustomerBalanceTransactionsCreated.fromJson(Object? json) => GetCustomersCustomerBalanceTransactionsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs10: parseAnyOfVariant<RangeQuerySpecs10>(json, (value) => RangeQuerySpecs10.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs10> rangeQuerySpecs10;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs10.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs10.isPresent) rangeQuerySpecs10.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetCustomersCustomerBalanceTransactionsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetCustomersCustomerBalanceTransactionsCreated(${toJson()})';
}

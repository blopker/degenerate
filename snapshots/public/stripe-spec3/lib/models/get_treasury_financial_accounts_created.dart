// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'range_query_specs55.dart';
@immutable
final class GetTreasuryFinancialAccountsCreated {
  const GetTreasuryFinancialAccountsCreated({this.rangeQuerySpecs55 = const Omittable.absent(),
this.$int = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetTreasuryFinancialAccountsCreated._({required this.rawValue, required this.rangeQuerySpecs55,
required this.$int,});
  factory GetTreasuryFinancialAccountsCreated.fromJson(Object? json) => GetTreasuryFinancialAccountsCreated._(
    rawValue: Omittable(json),
    rangeQuerySpecs55: parseAnyOfVariant<RangeQuerySpecs55>(json, (value) => RangeQuerySpecs55.fromJson(value! as Map<String, dynamic>)),
$int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<RangeQuerySpecs55> rangeQuerySpecs55;
final Omittable<int> $int;

  /// Whether at least one known variant matched.
  bool get isValid => rangeQuerySpecs55.isPresent || $int.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (rangeQuerySpecs55.isPresent) rangeQuerySpecs55.value?.toJson(),
if ($int.isPresent) $int.value,
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetTreasuryFinancialAccountsCreated && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetTreasuryFinancialAccountsCreated(${toJson()})';
}

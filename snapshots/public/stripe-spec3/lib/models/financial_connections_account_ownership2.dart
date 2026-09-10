// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'financial_connections_account_ownership.dart';/// The most recent information about the account's owners.
@immutable
final class FinancialConnectionsAccountOwnership2 {
  const FinancialConnectionsAccountOwnership2({this.string = const Omittable.absent(),
this.financialConnectionsAccountOwnership = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const FinancialConnectionsAccountOwnership2._({required this.rawValue, required this.string,
required this.financialConnectionsAccountOwnership,});
  factory FinancialConnectionsAccountOwnership2.fromJson(Object? json) => FinancialConnectionsAccountOwnership2._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
financialConnectionsAccountOwnership: parseAnyOfVariant<FinancialConnectionsAccountOwnership>(json, (value) => FinancialConnectionsAccountOwnership.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<FinancialConnectionsAccountOwnership> financialConnectionsAccountOwnership;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || financialConnectionsAccountOwnership.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (financialConnectionsAccountOwnership.isPresent) financialConnectionsAccountOwnership.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is FinancialConnectionsAccountOwnership2 && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'FinancialConnectionsAccountOwnership2(${toJson()})';
}

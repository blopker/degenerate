// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer.dart';/// The customer whose available cash balance changed as a result of this transaction.
@immutable
final class CustomerCashBalanceTransactionCustomer {
  const CustomerCashBalanceTransactionCustomer({this.string = const Omittable.absent(),
this.customer = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const CustomerCashBalanceTransactionCustomer._({required this.rawValue, required this.string,
required this.customer,});
  factory CustomerCashBalanceTransactionCustomer.fromJson(Object? json) => CustomerCashBalanceTransactionCustomer._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
customer: parseAnyOfVariant<Customer>(json, (value) => Customer.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Customer> customer;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || customer.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (customer.isPresent) customer.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is CustomerCashBalanceTransactionCustomer && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'CustomerCashBalanceTransactionCustomer(${toJson()})';
}

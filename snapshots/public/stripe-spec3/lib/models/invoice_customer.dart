// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer.dart';import 'deleted_customer.dart';/// The ID of the customer to bill.
@immutable
final class InvoiceCustomer {
  const InvoiceCustomer({this.string = const Omittable.absent(),
this.customer = const Omittable.absent(),
this.deletedCustomer = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const InvoiceCustomer._({required this.rawValue, required this.string,
required this.customer,
required this.deletedCustomer,});
  factory InvoiceCustomer.fromJson(Object? json) => InvoiceCustomer._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
customer: parseAnyOfVariant<Customer>(json, (value) => Customer.fromJson(value! as Map<String, dynamic>)),
deletedCustomer: parseAnyOfVariant<DeletedCustomer>(json, (value) => DeletedCustomer.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Customer> customer;
final Omittable<DeletedCustomer> deletedCustomer;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || customer.isPresent || deletedCustomer.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (customer.isPresent) customer.value?.toJson(),
if (deletedCustomer.isPresent) deletedCustomer.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is InvoiceCustomer && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'InvoiceCustomer(${toJson()})';
}

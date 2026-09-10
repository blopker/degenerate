// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer.dart';import 'deleted_customer.dart';
@immutable
final class GetCustomersCustomerResponse {
  const GetCustomersCustomerResponse({this.customer = const Omittable.absent(),
this.deletedCustomer = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const GetCustomersCustomerResponse._({required this.rawValue, required this.customer,
required this.deletedCustomer,});
  factory GetCustomersCustomerResponse.fromJson(Object? json) => GetCustomersCustomerResponse._(
    rawValue: Omittable(json),
    customer: parseAnyOfVariant<Customer>(json, (value) => Customer.fromJson(value! as Map<String, dynamic>)),
deletedCustomer: parseAnyOfVariant<DeletedCustomer>(json, (value) => DeletedCustomer.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<Customer> customer;
final Omittable<DeletedCustomer> deletedCustomer;

  /// Whether at least one known variant matched.
  bool get isValid => customer.isPresent || deletedCustomer.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (customer.isPresent) customer.value?.toJson(),
if (deletedCustomer.isPresent) deletedCustomer.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is GetCustomersCustomerResponse && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'GetCustomersCustomerResponse(${toJson()})';
}

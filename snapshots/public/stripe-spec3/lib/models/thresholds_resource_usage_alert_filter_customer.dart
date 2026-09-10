// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer.dart';/// Limit the scope of the alert to this customer ID
@immutable
final class ThresholdsResourceUsageAlertFilterCustomer {
  const ThresholdsResourceUsageAlertFilterCustomer({this.string = const Omittable.absent(),
this.customer = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const ThresholdsResourceUsageAlertFilterCustomer._({required this.rawValue, required this.string,
required this.customer,});
  factory ThresholdsResourceUsageAlertFilterCustomer.fromJson(Object? json) => ThresholdsResourceUsageAlertFilterCustomer._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
customer: parseAnyOfVariant<Customer>(json, (value) => Customer.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<Customer> customer;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || customer.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (customer.isPresent) customer.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is ThresholdsResourceUsageAlertFilterCustomer && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'ThresholdsResourceUsageAlertFilterCustomer(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer.dart';import 'deleted_customer.dart';/// ID of the Customer this PaymentIntent belongs to, if one exists.
/// 
/// Payment methods attached to other Customers cannot be used with this PaymentIntent.
/// 
/// If [setup_future_usage](https://api.stripe.com#payment_intent_object-setup_future_usage) is set and this PaymentIntent's payment method is not `card_present`, then the payment method attaches to the Customer after the PaymentIntent has been confirmed and any required actions from the user are complete. If the payment method is `card_present` and isn't a digital wallet, then a [generated_card](https://docs.stripe.com/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card is created and attached to the Customer instead.
@immutable
final class PaymentIntentCustomer {
  const PaymentIntentCustomer({this.string = const Omittable.absent(),
this.customer = const Omittable.absent(),
this.deletedCustomer = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentCustomer._({required this.rawValue, required this.string,
required this.customer,
required this.deletedCustomer,});
  factory PaymentIntentCustomer.fromJson(Object? json) => PaymentIntentCustomer._(
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
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || customer.isPresent || deletedCustomer.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (customer.isPresent) customer.value?.toJson(),
if (deletedCustomer.isPresent) deletedCustomer.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentCustomer && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentCustomer(${toJson()})';
}

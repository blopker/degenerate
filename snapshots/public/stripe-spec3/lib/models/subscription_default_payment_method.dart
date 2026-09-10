// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method.dart';/// ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. This takes precedence over `default_source`. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://docs.stripe.com/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://docs.stripe.com/api/customers/object#customer_object-default_source).
@immutable
final class SubscriptionDefaultPaymentMethod {
  const SubscriptionDefaultPaymentMethod({this.string = const Omittable.absent(),
this.paymentMethod = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SubscriptionDefaultPaymentMethod._({required this.rawValue, required this.string,
required this.paymentMethod,});
  factory SubscriptionDefaultPaymentMethod.fromJson(Object? json) => SubscriptionDefaultPaymentMethod._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentMethod: parseAnyOfVariant<PaymentMethod>(json, (value) => PaymentMethod.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentMethod> paymentMethod;

  /// Whether at least one known variant matched.
  bool get isValid => (rawValue.isPresent && rawValue.value == null) || string.isPresent || paymentMethod.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentMethod.isPresent) paymentMethod.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is SubscriptionDefaultPaymentMethod && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SubscriptionDefaultPaymentMethod(${toJson()})';
}

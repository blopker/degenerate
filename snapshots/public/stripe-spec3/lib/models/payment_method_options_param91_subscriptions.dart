// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param91_subscriptions_variant1.dart';@immutable final class PaymentMethodOptionsParam91SubscriptionsVariant2 {const PaymentMethodOptionsParam91SubscriptionsVariant2._(this.value);

factory PaymentMethodOptionsParam91SubscriptionsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentMethodOptionsParam91SubscriptionsVariant2._(json),
}; }

static const PaymentMethodOptionsParam91SubscriptionsVariant2 $empty = PaymentMethodOptionsParam91SubscriptionsVariant2._('');

static const List<PaymentMethodOptionsParam91SubscriptionsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam91SubscriptionsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam91SubscriptionsVariant2($value)'; } 
 }

@immutable
final class PaymentMethodOptionsParam91Subscriptions {
  const PaymentMethodOptionsParam91Subscriptions({this.listPaymentMethodOptionsParam91SubscriptionsVariant1 = const Omittable.absent(),
this.paymentMethodOptionsParam91SubscriptionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentMethodOptionsParam91Subscriptions._({required this.rawValue, required this.listPaymentMethodOptionsParam91SubscriptionsVariant1,
required this.paymentMethodOptionsParam91SubscriptionsVariant2,});
  factory PaymentMethodOptionsParam91Subscriptions.fromJson(Object? json) => PaymentMethodOptionsParam91Subscriptions._(
    rawValue: Omittable(json),
    listPaymentMethodOptionsParam91SubscriptionsVariant1: parseAnyOfVariant<List<PaymentMethodOptionsParam91SubscriptionsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PaymentMethodOptionsParam91SubscriptionsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
paymentMethodOptionsParam91SubscriptionsVariant2: parseAnyOfVariant<PaymentMethodOptionsParam91SubscriptionsVariant2>(json, (value) => PaymentMethodOptionsParam91SubscriptionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PaymentMethodOptionsParam91SubscriptionsVariant1>> listPaymentMethodOptionsParam91SubscriptionsVariant1;
final Omittable<PaymentMethodOptionsParam91SubscriptionsVariant2> paymentMethodOptionsParam91SubscriptionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPaymentMethodOptionsParam91SubscriptionsVariant1.isPresent || paymentMethodOptionsParam91SubscriptionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPaymentMethodOptionsParam91SubscriptionsVariant1.isPresent) listPaymentMethodOptionsParam91SubscriptionsVariant1.value?.map((e) => e.toJson()).toList(),
if (paymentMethodOptionsParam91SubscriptionsVariant2.isPresent) paymentMethodOptionsParam91SubscriptionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentMethodOptionsParam91Subscriptions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentMethodOptionsParam91Subscriptions(${toJson()})';
}

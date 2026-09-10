// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param54_subscriptions_variant1.dart';@immutable final class PaymentMethodOptionsParam54SubscriptionsVariant2 {const PaymentMethodOptionsParam54SubscriptionsVariant2._(this.value);

factory PaymentMethodOptionsParam54SubscriptionsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentMethodOptionsParam54SubscriptionsVariant2._(json),
};}

static const PaymentMethodOptionsParam54SubscriptionsVariant2 $empty = PaymentMethodOptionsParam54SubscriptionsVariant2._('');

static const List<PaymentMethodOptionsParam54SubscriptionsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentMethodOptionsParam54SubscriptionsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentMethodOptionsParam54SubscriptionsVariant2($value)';}
}

@immutable
final class PaymentMethodOptionsParam54Subscriptions {
  const PaymentMethodOptionsParam54Subscriptions({this.listPaymentMethodOptionsParam54SubscriptionsVariant1 = const Omittable.absent(),
this.paymentMethodOptionsParam54SubscriptionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentMethodOptionsParam54Subscriptions._({required this.rawValue, required this.listPaymentMethodOptionsParam54SubscriptionsVariant1,
required this.paymentMethodOptionsParam54SubscriptionsVariant2,});
  factory PaymentMethodOptionsParam54Subscriptions.fromJson(Object? json) => PaymentMethodOptionsParam54Subscriptions._(
    rawValue: Omittable(json),
    listPaymentMethodOptionsParam54SubscriptionsVariant1: parseAnyOfVariant<List<PaymentMethodOptionsParam54SubscriptionsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PaymentMethodOptionsParam54SubscriptionsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
paymentMethodOptionsParam54SubscriptionsVariant2: parseAnyOfVariant<PaymentMethodOptionsParam54SubscriptionsVariant2>(json, (value) => PaymentMethodOptionsParam54SubscriptionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PaymentMethodOptionsParam54SubscriptionsVariant1>> listPaymentMethodOptionsParam54SubscriptionsVariant1;
final Omittable<PaymentMethodOptionsParam54SubscriptionsVariant2> paymentMethodOptionsParam54SubscriptionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPaymentMethodOptionsParam54SubscriptionsVariant1.isPresent || paymentMethodOptionsParam54SubscriptionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPaymentMethodOptionsParam54SubscriptionsVariant1.isPresent) listPaymentMethodOptionsParam54SubscriptionsVariant1.value?.map((e) => e.toJson()).toList(),
if (paymentMethodOptionsParam54SubscriptionsVariant2.isPresent) paymentMethodOptionsParam54SubscriptionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentMethodOptionsParam54Subscriptions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentMethodOptionsParam54Subscriptions(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param17_subscriptions_variant1.dart';@immutable final class PaymentMethodOptionsParam17SubscriptionsVariant2 {const PaymentMethodOptionsParam17SubscriptionsVariant2._(this.value);

factory PaymentMethodOptionsParam17SubscriptionsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentMethodOptionsParam17SubscriptionsVariant2._(json),
};}

static const PaymentMethodOptionsParam17SubscriptionsVariant2 $empty = PaymentMethodOptionsParam17SubscriptionsVariant2._('');

static const List<PaymentMethodOptionsParam17SubscriptionsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentMethodOptionsParam17SubscriptionsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentMethodOptionsParam17SubscriptionsVariant2($value)';}
}

@immutable
final class PaymentMethodOptionsParam17Subscriptions {
  const PaymentMethodOptionsParam17Subscriptions({this.listPaymentMethodOptionsParam17SubscriptionsVariant1 = const Omittable.absent(),
this.paymentMethodOptionsParam17SubscriptionsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentMethodOptionsParam17Subscriptions._({required this.rawValue, required this.listPaymentMethodOptionsParam17SubscriptionsVariant1,
required this.paymentMethodOptionsParam17SubscriptionsVariant2,});
  factory PaymentMethodOptionsParam17Subscriptions.fromJson(Object? json) => PaymentMethodOptionsParam17Subscriptions._(
    rawValue: Omittable(json),
    listPaymentMethodOptionsParam17SubscriptionsVariant1: parseAnyOfVariant<List<PaymentMethodOptionsParam17SubscriptionsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PaymentMethodOptionsParam17SubscriptionsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
paymentMethodOptionsParam17SubscriptionsVariant2: parseAnyOfVariant<PaymentMethodOptionsParam17SubscriptionsVariant2>(json, (value) => PaymentMethodOptionsParam17SubscriptionsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PaymentMethodOptionsParam17SubscriptionsVariant1>> listPaymentMethodOptionsParam17SubscriptionsVariant1;
final Omittable<PaymentMethodOptionsParam17SubscriptionsVariant2> paymentMethodOptionsParam17SubscriptionsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPaymentMethodOptionsParam17SubscriptionsVariant1.isPresent || paymentMethodOptionsParam17SubscriptionsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPaymentMethodOptionsParam17SubscriptionsVariant1.isPresent) listPaymentMethodOptionsParam17SubscriptionsVariant1.value?.map((e) => e.toJson()).toList(),
if (paymentMethodOptionsParam17SubscriptionsVariant2.isPresent) paymentMethodOptionsParam17SubscriptionsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentMethodOptionsParam17Subscriptions && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentMethodOptionsParam17Subscriptions(${toJson()})';
}

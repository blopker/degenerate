// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_type_specific_payment_method_options_client.dart';import 'payment_method_options_afterpay_clearpay.dart';
@immutable
final class PaymentIntentPaymentMethodOptionsAfterpayClearpay {
  const PaymentIntentPaymentMethodOptionsAfterpayClearpay({this.paymentMethodOptionsAfterpayClearpay = const Omittable.absent(),
this.paymentIntentTypeSpecificPaymentMethodOptionsClient = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsAfterpayClearpay._({required this.rawValue, required this.paymentMethodOptionsAfterpayClearpay,
required this.paymentIntentTypeSpecificPaymentMethodOptionsClient,});
  factory PaymentIntentPaymentMethodOptionsAfterpayClearpay.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsAfterpayClearpay._(
    rawValue: Omittable(json),
    paymentMethodOptionsAfterpayClearpay: parseAnyOfVariant<PaymentMethodOptionsAfterpayClearpay>(json, (value) => PaymentMethodOptionsAfterpayClearpay.fromJson(value! as Map<String, dynamic>)),
paymentIntentTypeSpecificPaymentMethodOptionsClient: parseAnyOfVariant<PaymentIntentTypeSpecificPaymentMethodOptionsClient>(json, (value) => PaymentIntentTypeSpecificPaymentMethodOptionsClient.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<PaymentMethodOptionsAfterpayClearpay> paymentMethodOptionsAfterpayClearpay;
final Omittable<PaymentIntentTypeSpecificPaymentMethodOptionsClient> paymentIntentTypeSpecificPaymentMethodOptionsClient;

  /// Whether at least one known variant matched.
  bool get isValid => paymentMethodOptionsAfterpayClearpay.isPresent || paymentIntentTypeSpecificPaymentMethodOptionsClient.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (paymentMethodOptionsAfterpayClearpay.isPresent) paymentMethodOptionsAfterpayClearpay.value?.toJson(),
if (paymentIntentTypeSpecificPaymentMethodOptionsClient.isPresent) paymentIntentTypeSpecificPaymentMethodOptionsClient.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsAfterpayClearpay && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsAfterpayClearpay(${toJson()})';
}

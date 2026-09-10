// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method.dart';/// ID of the payment method used with this SetupIntent. If the payment method is `card_present` and isn't a digital wallet, then the [generated_card](https://docs.stripe.com/api/setup_attempts/object#setup_attempt_object-payment_method_details-card_present-generated_card) associated with the `latest_attempt` is attached to the Customer instead.
@immutable
final class SetupIntentPaymentMethod {
  const SetupIntentPaymentMethod({this.string = const Omittable.absent(),
this.paymentMethod = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SetupIntentPaymentMethod._({required this.rawValue, required this.string,
required this.paymentMethod,});
  factory SetupIntentPaymentMethod.fromJson(Object? json) => SetupIntentPaymentMethod._(
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
      other is SetupIntentPaymentMethod && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SetupIntentPaymentMethod(${toJson()})';
}

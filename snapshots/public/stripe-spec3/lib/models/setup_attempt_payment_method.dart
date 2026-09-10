// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method.dart';/// ID of the payment method used with this SetupAttempt.
@immutable
final class SetupAttemptPaymentMethod {
  const SetupAttemptPaymentMethod({this.string = const Omittable.absent(),
this.paymentMethod = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const SetupAttemptPaymentMethod._({required this.rawValue, required this.string,
required this.paymentMethod,});
  factory SetupAttemptPaymentMethod.fromJson(Object? json) => SetupAttemptPaymentMethod._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentMethod: parseAnyOfVariant<PaymentMethod>(json, (value) => PaymentMethod.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentMethod> paymentMethod;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentMethod.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentMethod.isPresent) paymentMethod.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is SetupAttemptPaymentMethod && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'SetupAttemptPaymentMethod(${toJson()})';
}

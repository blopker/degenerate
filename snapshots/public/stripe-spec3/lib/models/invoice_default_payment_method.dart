// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method.dart';/// ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription's default payment method, if any, or to the default payment method in the customer's invoice settings.
@immutable
final class InvoiceDefaultPaymentMethod {
  const InvoiceDefaultPaymentMethod({this.string = const Omittable.absent(),
this.paymentMethod = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const InvoiceDefaultPaymentMethod._({required this.rawValue, required this.string,
required this.paymentMethod,});
  factory InvoiceDefaultPaymentMethod.fromJson(Object? json) => InvoiceDefaultPaymentMethod._(
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
      other is InvoiceDefaultPaymentMethod && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'InvoiceDefaultPaymentMethod(${toJson()})';
}

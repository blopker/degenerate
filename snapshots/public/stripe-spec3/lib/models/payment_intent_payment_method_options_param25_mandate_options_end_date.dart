// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2 {const PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2 $empty = PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2($value)'; } 
 }

@immutable
final class PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDate {
  const PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDate({this.string = const Omittable.absent(),
this.paymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDate._({required this.rawValue, required this.string,
required this.paymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2,});
  factory PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDate.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDate._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2>(json, (value) => PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2> paymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2.isPresent) paymentIntentPaymentMethodOptionsParam25MandateOptionsEndDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsParam25MandateOptionsEndDate(${toJson()})';
}

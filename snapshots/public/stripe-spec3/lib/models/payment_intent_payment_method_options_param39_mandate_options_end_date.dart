// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2 {const PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2 $empty = PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2($value)'; } 
 }

@immutable
final class PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDate {
  const PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDate({this.string = const Omittable.absent(),
this.paymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDate._({required this.rawValue, required this.string,
required this.paymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2,});
  factory PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDate.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDate._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2>(json, (value) => PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2> paymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2.isPresent) paymentIntentPaymentMethodOptionsParam39MandateOptionsEndDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsParam39MandateOptionsEndDate(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2 {const PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2 $empty = PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2($value)'; } 
 }

@immutable
final class PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDate {
  const PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDate({this.string = const Omittable.absent(),
this.paymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDate._({required this.rawValue, required this.string,
required this.paymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2,});
  factory PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDate.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDate._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2>(json, (value) => PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2> paymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2.isPresent) paymentIntentPaymentMethodOptionsParam11MandateOptionsEndDateVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDate && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsParam11MandateOptionsEndDate(${toJson()})';
}

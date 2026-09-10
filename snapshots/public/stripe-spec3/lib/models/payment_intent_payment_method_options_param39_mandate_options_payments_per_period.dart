// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2 {const PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2 $empty = PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2($value)'; } 
 }

@immutable
final class PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriod {
  const PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriod({this.$int = const Omittable.absent(),
this.paymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriod._({required this.rawValue, required this.$int,
required this.paymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2,});
  factory PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriod.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriod._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
paymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2>(json, (value) => PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2> paymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || paymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (paymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2.isPresent) paymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriodVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriod && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsParam39MandateOptionsPaymentsPerPeriod(${toJson()})';
}

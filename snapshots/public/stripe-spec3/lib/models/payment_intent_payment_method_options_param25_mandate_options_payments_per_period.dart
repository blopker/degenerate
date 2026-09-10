// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2 {const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2._(json),
};}

static const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2 $empty = PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2($value)';}
}

@immutable
final class PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriod {
  const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriod({this.$int = const Omittable.absent(),
this.paymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriod._({required this.rawValue, required this.$int,
required this.paymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2,});
  factory PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriod.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriod._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
paymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2>(json, (value) => PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2> paymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || paymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (paymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2.isPresent) paymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriodVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriod && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsParam25MandateOptionsPaymentsPerPeriod(${toJson()})';
}

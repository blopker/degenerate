// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2 {const PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2._(json),
};}

static const PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2 $empty = PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2($value)';}
}

@immutable
final class PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriod {
  const PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriod({this.$int = const Omittable.absent(),
this.paymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriod._({required this.rawValue, required this.$int,
required this.paymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2,});
  factory PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriod.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriod._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
paymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2>(json, (value) => PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2> paymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || paymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (paymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2.isPresent) paymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriodVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriod && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsParam11MandateOptionsPaymentsPerPeriod(${toJson()})';
}

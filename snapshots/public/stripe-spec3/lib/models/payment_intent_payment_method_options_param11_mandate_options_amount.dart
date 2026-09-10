// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2 {const PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2._(json),
};}

static const PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2 $empty = PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2($value)';}
}

@immutable
final class PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmount {
  const PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmount({this.$int = const Omittable.absent(),
this.paymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmount._({required this.rawValue, required this.$int,
required this.paymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2,});
  factory PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmount.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmount._(
    rawValue: Omittable(json),
    $int: parseAnyOfVariant<int>(json, (value) => (value! as num).toInt()),
paymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2>(json, (value) => PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<int> $int;
final Omittable<PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2> paymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => $int.isPresent || paymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if ($int.isPresent) $int.value,
if (paymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2.isPresent) paymentIntentPaymentMethodOptionsParam11MandateOptionsAmountVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmount && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsParam11MandateOptionsAmount(${toJson()})';
}

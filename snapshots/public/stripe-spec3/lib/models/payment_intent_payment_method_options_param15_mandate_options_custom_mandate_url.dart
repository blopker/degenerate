// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2 {const PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2._(json),
};}

static const PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2 $empty = PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2($value)';}
}

@immutable
final class PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrl {
  const PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrl({this.string = const Omittable.absent(),
this.paymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrl._({required this.rawValue, required this.string,
required this.paymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2,});
  factory PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrl.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrl._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2>(json, (value) => PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2> paymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2.isPresent) paymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrlVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrl && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsParam15MandateOptionsCustomMandateUrl(${toJson()})';
}

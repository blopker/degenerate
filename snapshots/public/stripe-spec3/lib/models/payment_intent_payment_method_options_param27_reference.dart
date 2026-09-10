// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam27ReferenceVariant2 {const PaymentIntentPaymentMethodOptionsParam27ReferenceVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam27ReferenceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam27ReferenceVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam27ReferenceVariant2 $empty = PaymentIntentPaymentMethodOptionsParam27ReferenceVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam27ReferenceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam27ReferenceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam27ReferenceVariant2($value)'; } 
 }

@immutable
final class PaymentIntentPaymentMethodOptionsParam27Reference {
  const PaymentIntentPaymentMethodOptionsParam27Reference({this.string = const Omittable.absent(),
this.paymentIntentPaymentMethodOptionsParam27ReferenceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsParam27Reference._({required this.rawValue, required this.string,
required this.paymentIntentPaymentMethodOptionsParam27ReferenceVariant2,});
  factory PaymentIntentPaymentMethodOptionsParam27Reference.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsParam27Reference._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntentPaymentMethodOptionsParam27ReferenceVariant2: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam27ReferenceVariant2>(json, (value) => PaymentIntentPaymentMethodOptionsParam27ReferenceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntentPaymentMethodOptionsParam27ReferenceVariant2> paymentIntentPaymentMethodOptionsParam27ReferenceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentIntentPaymentMethodOptionsParam27ReferenceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntentPaymentMethodOptionsParam27ReferenceVariant2.isPresent) paymentIntentPaymentMethodOptionsParam27ReferenceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam27Reference && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsParam27Reference(${toJson()})';
}

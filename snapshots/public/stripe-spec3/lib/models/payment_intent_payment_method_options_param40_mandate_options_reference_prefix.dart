// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2 {const PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2 $empty = PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2($value)'; } 
 }

@immutable
final class PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefix {
  const PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefix({this.string = const Omittable.absent(),
this.paymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefix._({required this.rawValue, required this.string,
required this.paymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2,});
  factory PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefix.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefix._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2>(json, (value) => PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2> paymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2.isPresent) paymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefixVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefix && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsParam40MandateOptionsReferencePrefix(${toJson()})';
}

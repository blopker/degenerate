// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2 {const PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2 $empty = PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2($value)'; } 
 }

@immutable
final class PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefix {
  const PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefix({this.string = const Omittable.absent(),
this.paymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefix._({required this.rawValue, required this.string,
required this.paymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2,});
  factory PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefix.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefix._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2>(json, (value) => PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2> paymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2.isPresent) paymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefixVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefix && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsParam26MandateOptionsReferencePrefix(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2 {const PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2 $empty = PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2($value)'; } 
 }

@immutable
final class PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefix {
  const PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefix({this.string = const Omittable.absent(),
this.paymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefix._({required this.rawValue, required this.string,
required this.paymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2,});
  factory PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefix.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefix._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2>(json, (value) => PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2> paymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2.isPresent) paymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefixVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefix && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsParam17MandateOptionsReferencePrefix(${toJson()})';
}

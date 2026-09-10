// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2 {const PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2._(json),
};}

static const PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2 $empty = PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2($value)';}
}

@immutable
final class PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefix {
  const PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefix({this.string = const Omittable.absent(),
this.paymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefix._({required this.rawValue, required this.string,
required this.paymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2,});
  factory PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefix.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefix._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2>(json, (value) => PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2> paymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2.isPresent) paymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefixVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefix && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsParam12MandateOptionsReferencePrefix(${toJson()})';
}

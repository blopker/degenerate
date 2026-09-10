// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam13ReferenceVariant2 {const PaymentIntentPaymentMethodOptionsParam13ReferenceVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam13ReferenceVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam13ReferenceVariant2._(json),
};}

static const PaymentIntentPaymentMethodOptionsParam13ReferenceVariant2 $empty = PaymentIntentPaymentMethodOptionsParam13ReferenceVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam13ReferenceVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam13ReferenceVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentIntentPaymentMethodOptionsParam13ReferenceVariant2($value)';}
}

@immutable
final class PaymentIntentPaymentMethodOptionsParam13Reference {
  const PaymentIntentPaymentMethodOptionsParam13Reference({this.string = const Omittable.absent(),
this.paymentIntentPaymentMethodOptionsParam13ReferenceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsParam13Reference._({required this.rawValue, required this.string,
required this.paymentIntentPaymentMethodOptionsParam13ReferenceVariant2,});
  factory PaymentIntentPaymentMethodOptionsParam13Reference.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsParam13Reference._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntentPaymentMethodOptionsParam13ReferenceVariant2: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam13ReferenceVariant2>(json, (value) => PaymentIntentPaymentMethodOptionsParam13ReferenceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntentPaymentMethodOptionsParam13ReferenceVariant2> paymentIntentPaymentMethodOptionsParam13ReferenceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentIntentPaymentMethodOptionsParam13ReferenceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntentPaymentMethodOptionsParam13ReferenceVariant2.isPresent) paymentIntentPaymentMethodOptionsParam13ReferenceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam13Reference && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsParam13Reference(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam41ReferenceVariant2 {const PaymentIntentPaymentMethodOptionsParam41ReferenceVariant2._(this.value);

factory PaymentIntentPaymentMethodOptionsParam41ReferenceVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentIntentPaymentMethodOptionsParam41ReferenceVariant2._(json),
};}

static const PaymentIntentPaymentMethodOptionsParam41ReferenceVariant2 $empty = PaymentIntentPaymentMethodOptionsParam41ReferenceVariant2._('');

static const List<PaymentIntentPaymentMethodOptionsParam41ReferenceVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam41ReferenceVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentIntentPaymentMethodOptionsParam41ReferenceVariant2($value)';}
}

@immutable
final class PaymentIntentPaymentMethodOptionsParam41Reference {
  const PaymentIntentPaymentMethodOptionsParam41Reference({this.string = const Omittable.absent(),
this.paymentIntentPaymentMethodOptionsParam41ReferenceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentPaymentMethodOptionsParam41Reference._({required this.rawValue, required this.string,
required this.paymentIntentPaymentMethodOptionsParam41ReferenceVariant2,});
  factory PaymentIntentPaymentMethodOptionsParam41Reference.fromJson(Object? json) => PaymentIntentPaymentMethodOptionsParam41Reference._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntentPaymentMethodOptionsParam41ReferenceVariant2: parseAnyOfVariant<PaymentIntentPaymentMethodOptionsParam41ReferenceVariant2>(json, (value) => PaymentIntentPaymentMethodOptionsParam41ReferenceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntentPaymentMethodOptionsParam41ReferenceVariant2> paymentIntentPaymentMethodOptionsParam41ReferenceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentIntentPaymentMethodOptionsParam41ReferenceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntentPaymentMethodOptionsParam41ReferenceVariant2.isPresent) paymentIntentPaymentMethodOptionsParam41ReferenceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam41Reference && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentPaymentMethodOptionsParam41Reference(${toJson()})';
}

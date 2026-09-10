// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentDetailsCustomerReferenceVariant2 {const PaymentDetailsCustomerReferenceVariant2._(this.value);

factory PaymentDetailsCustomerReferenceVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentDetailsCustomerReferenceVariant2._(json),
};}

static const PaymentDetailsCustomerReferenceVariant2 $empty = PaymentDetailsCustomerReferenceVariant2._('');

static const List<PaymentDetailsCustomerReferenceVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentDetailsCustomerReferenceVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentDetailsCustomerReferenceVariant2($value)';}
}

@immutable
final class PaymentDetailsCustomerReference {
  const PaymentDetailsCustomerReference({this.string = const Omittable.absent(),
this.paymentDetailsCustomerReferenceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentDetailsCustomerReference._({required this.rawValue, required this.string,
required this.paymentDetailsCustomerReferenceVariant2,});
  factory PaymentDetailsCustomerReference.fromJson(Object? json) => PaymentDetailsCustomerReference._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentDetailsCustomerReferenceVariant2: parseAnyOfVariant<PaymentDetailsCustomerReferenceVariant2>(json, (value) => PaymentDetailsCustomerReferenceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentDetailsCustomerReferenceVariant2> paymentDetailsCustomerReferenceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentDetailsCustomerReferenceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentDetailsCustomerReferenceVariant2.isPresent) paymentDetailsCustomerReferenceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentDetailsCustomerReference && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentDetailsCustomerReference(${toJson()})';
}

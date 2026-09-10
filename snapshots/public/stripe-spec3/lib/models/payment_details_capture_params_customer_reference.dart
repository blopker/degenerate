// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentDetailsCaptureParamsCustomerReferenceVariant2 {const PaymentDetailsCaptureParamsCustomerReferenceVariant2._(this.value);

factory PaymentDetailsCaptureParamsCustomerReferenceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentDetailsCaptureParamsCustomerReferenceVariant2._(json),
}; }

static const PaymentDetailsCaptureParamsCustomerReferenceVariant2 $empty = PaymentDetailsCaptureParamsCustomerReferenceVariant2._('');

static const List<PaymentDetailsCaptureParamsCustomerReferenceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentDetailsCaptureParamsCustomerReferenceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentDetailsCaptureParamsCustomerReferenceVariant2($value)'; } 
 }

@immutable
final class PaymentDetailsCaptureParamsCustomerReference {
  const PaymentDetailsCaptureParamsCustomerReference({this.string = const Omittable.absent(),
this.paymentDetailsCaptureParamsCustomerReferenceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentDetailsCaptureParamsCustomerReference._({required this.rawValue, required this.string,
required this.paymentDetailsCaptureParamsCustomerReferenceVariant2,});
  factory PaymentDetailsCaptureParamsCustomerReference.fromJson(Object? json) => PaymentDetailsCaptureParamsCustomerReference._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentDetailsCaptureParamsCustomerReferenceVariant2: parseAnyOfVariant<PaymentDetailsCaptureParamsCustomerReferenceVariant2>(json, (value) => PaymentDetailsCaptureParamsCustomerReferenceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentDetailsCaptureParamsCustomerReferenceVariant2> paymentDetailsCaptureParamsCustomerReferenceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentDetailsCaptureParamsCustomerReferenceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentDetailsCaptureParamsCustomerReferenceVariant2.isPresent) paymentDetailsCaptureParamsCustomerReferenceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentDetailsCaptureParamsCustomerReference && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentDetailsCaptureParamsCustomerReference(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentDetailsCaptureParamsOrderReferenceVariant2 {const PaymentDetailsCaptureParamsOrderReferenceVariant2._(this.value);

factory PaymentDetailsCaptureParamsOrderReferenceVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentDetailsCaptureParamsOrderReferenceVariant2._(json),
};}

static const PaymentDetailsCaptureParamsOrderReferenceVariant2 $empty = PaymentDetailsCaptureParamsOrderReferenceVariant2._('');

static const List<PaymentDetailsCaptureParamsOrderReferenceVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentDetailsCaptureParamsOrderReferenceVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentDetailsCaptureParamsOrderReferenceVariant2($value)';}
}

@immutable
final class PaymentDetailsCaptureParamsOrderReference {
  const PaymentDetailsCaptureParamsOrderReference({this.string = const Omittable.absent(),
this.paymentDetailsCaptureParamsOrderReferenceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentDetailsCaptureParamsOrderReference._({required this.rawValue, required this.string,
required this.paymentDetailsCaptureParamsOrderReferenceVariant2,});
  factory PaymentDetailsCaptureParamsOrderReference.fromJson(Object? json) => PaymentDetailsCaptureParamsOrderReference._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentDetailsCaptureParamsOrderReferenceVariant2: parseAnyOfVariant<PaymentDetailsCaptureParamsOrderReferenceVariant2>(json, (value) => PaymentDetailsCaptureParamsOrderReferenceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentDetailsCaptureParamsOrderReferenceVariant2> paymentDetailsCaptureParamsOrderReferenceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentDetailsCaptureParamsOrderReferenceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentDetailsCaptureParamsOrderReferenceVariant2.isPresent) paymentDetailsCaptureParamsOrderReferenceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentDetailsCaptureParamsOrderReference && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentDetailsCaptureParamsOrderReference(${toJson()})';
}

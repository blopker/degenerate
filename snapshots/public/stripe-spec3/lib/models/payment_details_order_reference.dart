// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentDetailsOrderReferenceVariant2 {const PaymentDetailsOrderReferenceVariant2._(this.value);

factory PaymentDetailsOrderReferenceVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentDetailsOrderReferenceVariant2._(json),
};}

static const PaymentDetailsOrderReferenceVariant2 $empty = PaymentDetailsOrderReferenceVariant2._('');

static const List<PaymentDetailsOrderReferenceVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentDetailsOrderReferenceVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentDetailsOrderReferenceVariant2($value)';}
}

@immutable
final class PaymentDetailsOrderReference {
  const PaymentDetailsOrderReference({this.string = const Omittable.absent(),
this.paymentDetailsOrderReferenceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentDetailsOrderReference._({required this.rawValue, required this.string,
required this.paymentDetailsOrderReferenceVariant2,});
  factory PaymentDetailsOrderReference.fromJson(Object? json) => PaymentDetailsOrderReference._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentDetailsOrderReferenceVariant2: parseAnyOfVariant<PaymentDetailsOrderReferenceVariant2>(json, (value) => PaymentDetailsOrderReferenceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentDetailsOrderReferenceVariant2> paymentDetailsOrderReferenceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentDetailsOrderReferenceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentDetailsOrderReferenceVariant2.isPresent) paymentDetailsOrderReferenceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentDetailsOrderReference && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentDetailsOrderReference(${toJson()})';
}

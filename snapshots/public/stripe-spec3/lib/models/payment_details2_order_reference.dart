// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentDetails2OrderReferenceVariant2 {const PaymentDetails2OrderReferenceVariant2._(this.value);

factory PaymentDetails2OrderReferenceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentDetails2OrderReferenceVariant2._(json),
}; }

static const PaymentDetails2OrderReferenceVariant2 $empty = PaymentDetails2OrderReferenceVariant2._('');

static const List<PaymentDetails2OrderReferenceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentDetails2OrderReferenceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentDetails2OrderReferenceVariant2($value)'; } 
 }

@immutable
final class PaymentDetails2OrderReference {
  const PaymentDetails2OrderReference({this.string = const Omittable.absent(),
this.paymentDetails2OrderReferenceVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentDetails2OrderReference._({required this.rawValue, required this.string,
required this.paymentDetails2OrderReferenceVariant2,});
  factory PaymentDetails2OrderReference.fromJson(Object? json) => PaymentDetails2OrderReference._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentDetails2OrderReferenceVariant2: parseAnyOfVariant<PaymentDetails2OrderReferenceVariant2>(json, (value) => PaymentDetails2OrderReferenceVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentDetails2OrderReferenceVariant2> paymentDetails2OrderReferenceVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentDetails2OrderReferenceVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentDetails2OrderReferenceVariant2.isPresent) paymentDetails2OrderReferenceVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentDetails2OrderReference && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentDetails2OrderReference(${toJson()})';
}

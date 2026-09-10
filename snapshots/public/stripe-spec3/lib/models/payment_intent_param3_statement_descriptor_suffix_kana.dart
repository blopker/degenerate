// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentParam3StatementDescriptorSuffixKanaVariant2 {const PaymentIntentParam3StatementDescriptorSuffixKanaVariant2._(this.value);

factory PaymentIntentParam3StatementDescriptorSuffixKanaVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentParam3StatementDescriptorSuffixKanaVariant2._(json),
}; }

static const PaymentIntentParam3StatementDescriptorSuffixKanaVariant2 $empty = PaymentIntentParam3StatementDescriptorSuffixKanaVariant2._('');

static const List<PaymentIntentParam3StatementDescriptorSuffixKanaVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParam3StatementDescriptorSuffixKanaVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParam3StatementDescriptorSuffixKanaVariant2($value)'; } 
 }

@immutable
final class PaymentIntentParam3StatementDescriptorSuffixKana {
  const PaymentIntentParam3StatementDescriptorSuffixKana({this.string = const Omittable.absent(),
this.paymentIntentParam3StatementDescriptorSuffixKanaVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentParam3StatementDescriptorSuffixKana._({required this.rawValue, required this.string,
required this.paymentIntentParam3StatementDescriptorSuffixKanaVariant2,});
  factory PaymentIntentParam3StatementDescriptorSuffixKana.fromJson(Object? json) => PaymentIntentParam3StatementDescriptorSuffixKana._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntentParam3StatementDescriptorSuffixKanaVariant2: parseAnyOfVariant<PaymentIntentParam3StatementDescriptorSuffixKanaVariant2>(json, (value) => PaymentIntentParam3StatementDescriptorSuffixKanaVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntentParam3StatementDescriptorSuffixKanaVariant2> paymentIntentParam3StatementDescriptorSuffixKanaVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentIntentParam3StatementDescriptorSuffixKanaVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntentParam3StatementDescriptorSuffixKanaVariant2.isPresent) paymentIntentParam3StatementDescriptorSuffixKanaVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentParam3StatementDescriptorSuffixKana && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentParam3StatementDescriptorSuffixKana(${toJson()})';
}

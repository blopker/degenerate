// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentParam2StatementDescriptorSuffixKanaVariant2 {const PaymentIntentParam2StatementDescriptorSuffixKanaVariant2._(this.value);

factory PaymentIntentParam2StatementDescriptorSuffixKanaVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentIntentParam2StatementDescriptorSuffixKanaVariant2._(json),
};}

static const PaymentIntentParam2StatementDescriptorSuffixKanaVariant2 $empty = PaymentIntentParam2StatementDescriptorSuffixKanaVariant2._('');

static const List<PaymentIntentParam2StatementDescriptorSuffixKanaVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentIntentParam2StatementDescriptorSuffixKanaVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentIntentParam2StatementDescriptorSuffixKanaVariant2($value)';}
}

@immutable
final class PaymentIntentParam2StatementDescriptorSuffixKana {
  const PaymentIntentParam2StatementDescriptorSuffixKana({this.string = const Omittable.absent(),
this.paymentIntentParam2StatementDescriptorSuffixKanaVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentParam2StatementDescriptorSuffixKana._({required this.rawValue, required this.string,
required this.paymentIntentParam2StatementDescriptorSuffixKanaVariant2,});
  factory PaymentIntentParam2StatementDescriptorSuffixKana.fromJson(Object? json) => PaymentIntentParam2StatementDescriptorSuffixKana._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntentParam2StatementDescriptorSuffixKanaVariant2: parseAnyOfVariant<PaymentIntentParam2StatementDescriptorSuffixKanaVariant2>(json, (value) => PaymentIntentParam2StatementDescriptorSuffixKanaVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntentParam2StatementDescriptorSuffixKanaVariant2> paymentIntentParam2StatementDescriptorSuffixKanaVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentIntentParam2StatementDescriptorSuffixKanaVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntentParam2StatementDescriptorSuffixKanaVariant2.isPresent) paymentIntentParam2StatementDescriptorSuffixKanaVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentParam2StatementDescriptorSuffixKana && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentParam2StatementDescriptorSuffixKana(${toJson()})';
}

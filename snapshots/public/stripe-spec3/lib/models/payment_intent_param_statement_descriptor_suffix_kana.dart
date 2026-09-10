// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentParamStatementDescriptorSuffixKanaVariant2 {const PaymentIntentParamStatementDescriptorSuffixKanaVariant2._(this.value);

factory PaymentIntentParamStatementDescriptorSuffixKanaVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentIntentParamStatementDescriptorSuffixKanaVariant2._(json),
};}

static const PaymentIntentParamStatementDescriptorSuffixKanaVariant2 $empty = PaymentIntentParamStatementDescriptorSuffixKanaVariant2._('');

static const List<PaymentIntentParamStatementDescriptorSuffixKanaVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentIntentParamStatementDescriptorSuffixKanaVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentIntentParamStatementDescriptorSuffixKanaVariant2($value)';}
}

@immutable
final class PaymentIntentParamStatementDescriptorSuffixKana {
  const PaymentIntentParamStatementDescriptorSuffixKana({this.string = const Omittable.absent(),
this.paymentIntentParamStatementDescriptorSuffixKanaVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentParamStatementDescriptorSuffixKana._({required this.rawValue, required this.string,
required this.paymentIntentParamStatementDescriptorSuffixKanaVariant2,});
  factory PaymentIntentParamStatementDescriptorSuffixKana.fromJson(Object? json) => PaymentIntentParamStatementDescriptorSuffixKana._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntentParamStatementDescriptorSuffixKanaVariant2: parseAnyOfVariant<PaymentIntentParamStatementDescriptorSuffixKanaVariant2>(json, (value) => PaymentIntentParamStatementDescriptorSuffixKanaVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntentParamStatementDescriptorSuffixKanaVariant2> paymentIntentParamStatementDescriptorSuffixKanaVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentIntentParamStatementDescriptorSuffixKanaVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntentParamStatementDescriptorSuffixKanaVariant2.isPresent) paymentIntentParamStatementDescriptorSuffixKanaVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentParamStatementDescriptorSuffixKana && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentParamStatementDescriptorSuffixKana(${toJson()})';
}

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentParamStatementDescriptorSuffixKanjiVariant2 {const PaymentIntentParamStatementDescriptorSuffixKanjiVariant2._(this.value);

factory PaymentIntentParamStatementDescriptorSuffixKanjiVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PaymentIntentParamStatementDescriptorSuffixKanjiVariant2._(json),
}; }

static const PaymentIntentParamStatementDescriptorSuffixKanjiVariant2 $empty = PaymentIntentParamStatementDescriptorSuffixKanjiVariant2._('');

static const List<PaymentIntentParamStatementDescriptorSuffixKanjiVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentParamStatementDescriptorSuffixKanjiVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentParamStatementDescriptorSuffixKanjiVariant2($value)'; } 
 }

@immutable
final class PaymentIntentParamStatementDescriptorSuffixKanji {
  const PaymentIntentParamStatementDescriptorSuffixKanji({this.string = const Omittable.absent(),
this.paymentIntentParamStatementDescriptorSuffixKanjiVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentParamStatementDescriptorSuffixKanji._({required this.rawValue, required this.string,
required this.paymentIntentParamStatementDescriptorSuffixKanjiVariant2,});
  factory PaymentIntentParamStatementDescriptorSuffixKanji.fromJson(Object? json) => PaymentIntentParamStatementDescriptorSuffixKanji._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntentParamStatementDescriptorSuffixKanjiVariant2: parseAnyOfVariant<PaymentIntentParamStatementDescriptorSuffixKanjiVariant2>(json, (value) => PaymentIntentParamStatementDescriptorSuffixKanjiVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntentParamStatementDescriptorSuffixKanjiVariant2> paymentIntentParamStatementDescriptorSuffixKanjiVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentIntentParamStatementDescriptorSuffixKanjiVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntentParamStatementDescriptorSuffixKanjiVariant2.isPresent) paymentIntentParamStatementDescriptorSuffixKanjiVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentParamStatementDescriptorSuffixKanji && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentParamStatementDescriptorSuffixKanji(${toJson()})';
}

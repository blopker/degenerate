// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentParam3StatementDescriptorSuffixKanjiVariant2 {const PaymentIntentParam3StatementDescriptorSuffixKanjiVariant2._(this.value);

factory PaymentIntentParam3StatementDescriptorSuffixKanjiVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PaymentIntentParam3StatementDescriptorSuffixKanjiVariant2._(json),
};}

static const PaymentIntentParam3StatementDescriptorSuffixKanjiVariant2 $empty = PaymentIntentParam3StatementDescriptorSuffixKanjiVariant2._('');

static const List<PaymentIntentParam3StatementDescriptorSuffixKanjiVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PaymentIntentParam3StatementDescriptorSuffixKanjiVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PaymentIntentParam3StatementDescriptorSuffixKanjiVariant2($value)';}
}

@immutable
final class PaymentIntentParam3StatementDescriptorSuffixKanji {
  const PaymentIntentParam3StatementDescriptorSuffixKanji({this.string = const Omittable.absent(),
this.paymentIntentParam3StatementDescriptorSuffixKanjiVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PaymentIntentParam3StatementDescriptorSuffixKanji._({required this.rawValue, required this.string,
required this.paymentIntentParam3StatementDescriptorSuffixKanjiVariant2,});
  factory PaymentIntentParam3StatementDescriptorSuffixKanji.fromJson(Object? json) => PaymentIntentParam3StatementDescriptorSuffixKanji._(
    rawValue: Omittable(json),
    string: parseAnyOfVariant<String>(json, (value) => value! as String),
paymentIntentParam3StatementDescriptorSuffixKanjiVariant2: parseAnyOfVariant<PaymentIntentParam3StatementDescriptorSuffixKanjiVariant2>(json, (value) => PaymentIntentParam3StatementDescriptorSuffixKanjiVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<String> string;
final Omittable<PaymentIntentParam3StatementDescriptorSuffixKanjiVariant2> paymentIntentParam3StatementDescriptorSuffixKanjiVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => string.isPresent || paymentIntentParam3StatementDescriptorSuffixKanjiVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (string.isPresent) string.value,
if (paymentIntentParam3StatementDescriptorSuffixKanjiVariant2.isPresent) paymentIntentParam3StatementDescriptorSuffixKanjiVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PaymentIntentParam3StatementDescriptorSuffixKanji && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PaymentIntentParam3StatementDescriptorSuffixKanji(${toJson()})';
}

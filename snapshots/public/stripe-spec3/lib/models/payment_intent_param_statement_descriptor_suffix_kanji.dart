// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PaymentIntentParamStatementDescriptorSuffixKanjiVariant2 {const PaymentIntentParamStatementDescriptorSuffixKanjiVariant2._(this.value);

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
typedef PaymentIntentParamStatementDescriptorSuffixKanji = OneOf2<String,PaymentIntentParamStatementDescriptorSuffixKanjiVariant2>;
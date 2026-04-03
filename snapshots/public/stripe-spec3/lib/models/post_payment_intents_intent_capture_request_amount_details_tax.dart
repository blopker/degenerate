// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_tax_param3.dart';@immutable final class PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2 {const PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2._(this.value);

factory PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2._(json),
}; }

static const PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2 $empty = PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2._('');

static const List<PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentCaptureRequestAmountDetailsTax = OneOf2<AmountDetailsTaxParam3,PostPaymentIntentsIntentCaptureRequestAmountDetailsTaxVariant2>;

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2 {const PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2._(this.value);

factory PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2._(json),
}; }

static const PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2 $empty = PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2._('');

static const List<PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmount = OneOf2<int,PostPaymentIntentsIntentCaptureRequestAmountDetailsDiscountAmountVariant2>;
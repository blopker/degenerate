// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param16.dart';final class PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2 {const PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2 $empty = PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestPaymentMethodOptionsKakaoPay = OneOf2<PaymentMethodOptionsParam16,PostPaymentIntentsRequestPaymentMethodOptionsKakaoPayVariant2>;
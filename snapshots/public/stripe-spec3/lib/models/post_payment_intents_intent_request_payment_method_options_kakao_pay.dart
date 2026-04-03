// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param53.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPay = OneOf2<PaymentMethodOptionsParam53,PostPaymentIntentsIntentRequestPaymentMethodOptionsKakaoPayVariant2>;

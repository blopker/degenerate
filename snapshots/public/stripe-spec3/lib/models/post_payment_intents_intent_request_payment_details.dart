// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_details.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentDetailsVariant2 {const PostPaymentIntentsIntentRequestPaymentDetailsVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentDetailsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentDetailsVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentDetailsVariant2 $empty = PostPaymentIntentsIntentRequestPaymentDetailsVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentDetailsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentDetailsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentDetailsVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentDetails = OneOf2<PaymentDetails,PostPaymentIntentsIntentRequestPaymentDetailsVariant2>;

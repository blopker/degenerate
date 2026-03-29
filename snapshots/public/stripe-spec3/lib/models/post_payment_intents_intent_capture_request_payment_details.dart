// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_details_capture_params.dart';final class PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2 {const PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2._(this.value);

factory PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2._(json),
}; }

static const PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2 $empty = PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2._('');

static const List<PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentCaptureRequestPaymentDetails = OneOf2<PaymentDetailsCaptureParams,PostPaymentIntentsIntentCaptureRequestPaymentDetailsVariant2>;
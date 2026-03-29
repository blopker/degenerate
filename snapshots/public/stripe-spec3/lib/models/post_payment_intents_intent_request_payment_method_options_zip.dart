// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param74.dart';final class PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodOptionsZip = OneOf2<PaymentMethodOptionsParam74,PostPaymentIntentsIntentRequestPaymentMethodOptionsZipVariant2>;
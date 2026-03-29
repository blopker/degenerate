// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsName = OneOf2<String,PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2>;
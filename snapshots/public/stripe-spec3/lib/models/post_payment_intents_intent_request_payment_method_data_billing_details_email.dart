// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2 {const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2._(this.value);

factory PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2 $empty = PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2._('');

static const List<PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsEmail = OneOf2<String,PostPaymentIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2>;

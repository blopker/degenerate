// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2 {const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2 $empty = PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2._('');

static const List<PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestPaymentMethodDataBillingDetailsName = OneOf2<String,PostPaymentIntentsRequestPaymentMethodDataBillingDetailsNameVariant2>;

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2 {const PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2._(this.value);

factory PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2._(json),
}; }

static const PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2 $empty = PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2._('');

static const List<PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2($value)'; } 
 }
typedef PostPaymentIntentsRequestPaymentDetailsOrderReference = OneOf2<String,PostPaymentIntentsRequestPaymentDetailsOrderReferenceVariant2>;

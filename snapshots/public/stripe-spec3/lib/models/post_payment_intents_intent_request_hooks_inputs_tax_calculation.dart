// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2 {const PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2._(this.value);

factory PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2._(json),
}; }

static const PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2 $empty = PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2._('');

static const List<PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentRequestHooksInputsTaxCalculation = OneOf2<String,PostPaymentIntentsIntentRequestHooksInputsTaxCalculationVariant2>;
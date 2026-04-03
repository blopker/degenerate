// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_tax_param5.dart';@immutable final class PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2 {const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2._(this.value);

factory PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2._(json),
}; }

static const PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2 $empty = PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2._('');

static const List<PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTax = OneOf2<AmountDetailsTaxParam5,PostPaymentIntentsIntentIncrementAuthorizationRequestAmountDetailsTaxVariant2>;

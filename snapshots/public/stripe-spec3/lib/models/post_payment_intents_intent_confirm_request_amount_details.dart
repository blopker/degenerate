// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'amount_details_param2.dart';final class PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2 {const PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2 $empty = PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestAmountDetails = OneOf2<AmountDetailsParam2,PostPaymentIntentsIntentConfirmRequestAmountDetailsVariant2>;
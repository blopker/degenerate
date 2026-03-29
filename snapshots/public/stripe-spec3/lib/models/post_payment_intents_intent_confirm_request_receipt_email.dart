// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2 {const PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2._(this.value);

factory PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2._(json),
}; }

static const PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2 $empty = PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2._('');

static const List<PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2($value)'; } 
 }
typedef PostPaymentIntentsIntentConfirmRequestReceiptEmail = OneOf2<String,PostPaymentIntentsIntentConfirmRequestReceiptEmailVariant2>;
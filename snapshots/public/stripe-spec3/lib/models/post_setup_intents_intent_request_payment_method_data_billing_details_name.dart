// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2 {const PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2 $empty = PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2._('');

static const List<PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2($value)'; } 
 }
typedef PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsName = OneOf2<String,PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsNameVariant2>;
// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2 {const PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2._(this.value);

factory PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2._(json),
}; }

static const PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2 $empty = PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2._('');

static const List<PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2($value)'; } 
 }
typedef PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsEmail = OneOf2<String,PostSetupIntentsIntentRequestPaymentMethodDataBillingDetailsEmailVariant2>;

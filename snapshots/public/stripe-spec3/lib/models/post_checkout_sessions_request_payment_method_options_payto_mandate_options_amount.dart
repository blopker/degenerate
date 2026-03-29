// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 {const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 $empty = PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2._('');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2($value)'; } 
 }
typedef PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmount = OneOf2<int,PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsAmountVariant2>;
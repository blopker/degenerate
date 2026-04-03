// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 {const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 $empty = PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2._('');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2($value)'; } 
 }
typedef PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDate = OneOf2<String,PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsStartDateVariant2>;

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2 {const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2 $empty = PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2._('');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2($value)'; } 
 }
typedef PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDate = OneOf2<String,PostCheckoutSessionsRequestPaymentMethodOptionsPaytoMandateOptionsEndDateVariant2>;
// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostCheckoutSessionsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 {const PostCheckoutSessionsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 $empty = PostCheckoutSessionsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2._('');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2($value)'; } 
 }
typedef PostCheckoutSessionsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrl = OneOf2<String,PostCheckoutSessionsRequestPaymentMethodOptionsAcssDebitMandateOptionsCustomMandateUrlVariant2>;
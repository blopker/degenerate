// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 {const PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._(this.value);

factory PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._(json),
}; }

static const PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 $empty = PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2._('');

static const List<PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2($value)'; } 
 }
typedef PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefix = OneOf2<String,PostCheckoutSessionsRequestPaymentMethodOptionsSepaDebitMandateOptionsReferencePrefixVariant2>;
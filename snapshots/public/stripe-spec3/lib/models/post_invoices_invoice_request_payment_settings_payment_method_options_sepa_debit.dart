// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param29.dart';@immutable final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 {const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2._(this.value);

factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 $empty = PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2._('');

static const List<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2($value)'; } 
 }
typedef PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebit = OneOf2<InvoicePaymentMethodOptionsParam29,PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2>;

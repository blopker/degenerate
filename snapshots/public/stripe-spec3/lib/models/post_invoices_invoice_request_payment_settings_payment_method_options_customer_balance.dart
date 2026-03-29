// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param26.dart';final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 {const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._(this.value);

factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 $empty = PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._('');

static const List<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2($value)'; } 
 }
typedef PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalance = OneOf2<InvoicePaymentMethodOptionsParam26,PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2>;
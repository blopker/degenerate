// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param18.dart';final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 {const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._(this.value);

factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._(json),
}; }

static const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 $empty = PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2._('');

static const List<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2($value)'; } 
 }
typedef PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalance = OneOf2<InvoicePaymentMethodOptionsParam18,PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCustomerBalanceVariant2>;
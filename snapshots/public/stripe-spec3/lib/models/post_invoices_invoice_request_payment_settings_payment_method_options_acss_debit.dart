// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param23.dart';final class PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 {const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2._(this.value);

factory PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 $empty = PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2._('');

static const List<PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2($value)'; } 
 }
typedef PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebit = OneOf2<InvoicePaymentMethodOptionsParam23,PostInvoicesInvoiceRequestPaymentSettingsPaymentMethodOptionsAcssDebitVariant2>;
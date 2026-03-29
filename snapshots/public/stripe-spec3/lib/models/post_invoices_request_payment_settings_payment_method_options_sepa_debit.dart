// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param21.dart';final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 {const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2._(this.value);

factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2._(json),
}; }

static const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 $empty = PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2._('');

static const List<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2($value)'; } 
 }
typedef PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebit = OneOf2<InvoicePaymentMethodOptionsParam21,PostInvoicesRequestPaymentSettingsPaymentMethodOptionsSepaDebitVariant2>;
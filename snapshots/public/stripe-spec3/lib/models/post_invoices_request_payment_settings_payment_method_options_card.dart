// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'invoice_payment_method_options_param17.dart';@immutable final class PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2 {const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2._(this.value);

factory PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2._(json),
}; }

static const PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2 $empty = PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2._('');

static const List<PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2($value)'; } 
 }
typedef PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCard = OneOf2<InvoicePaymentMethodOptionsParam17,PostInvoicesRequestPaymentSettingsPaymentMethodOptionsCardVariant2>;

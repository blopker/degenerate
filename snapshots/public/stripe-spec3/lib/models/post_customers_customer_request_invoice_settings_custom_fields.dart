// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_customers_customer_request_invoice_settings_custom_fields_variant1.dart';@immutable final class PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2 {const PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2._(this.value);

factory PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2._(json),
}; }

static const PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2 $empty = PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2._('');

static const List<PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2($value)'; } 
 }
typedef PostCustomersCustomerRequestInvoiceSettingsCustomFields = OneOf2<List<PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant1>,PostCustomersCustomerRequestInvoiceSettingsCustomFieldsVariant2>;

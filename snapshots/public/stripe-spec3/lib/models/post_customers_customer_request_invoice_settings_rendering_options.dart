// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_rendering_options_param2.dart';@immutable final class PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2 {const PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2._(this.value);

factory PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2._(json),
}; }

static const PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2 $empty = PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2._('');

static const List<PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2($value)'; } 
 }
typedef PostCustomersCustomerRequestInvoiceSettingsRenderingOptions = OneOf2<CustomerRenderingOptionsParam2,PostCustomersCustomerRequestInvoiceSettingsRenderingOptionsVariant2>;

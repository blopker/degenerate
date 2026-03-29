// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'recipient_shipping_with_optional_fields_address.dart';final class PostInvoicesInvoiceRequestShippingDetailsVariant2 {const PostInvoicesInvoiceRequestShippingDetailsVariant2._(this.value);

factory PostInvoicesInvoiceRequestShippingDetailsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestShippingDetailsVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestShippingDetailsVariant2 $empty = PostInvoicesInvoiceRequestShippingDetailsVariant2._('');

static const List<PostInvoicesInvoiceRequestShippingDetailsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestShippingDetailsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestShippingDetailsVariant2($value)'; } 
 }
typedef PostInvoicesInvoiceRequestShippingDetails = OneOf2<RecipientShippingWithOptionalFieldsAddress,PostInvoicesInvoiceRequestShippingDetailsVariant2>;
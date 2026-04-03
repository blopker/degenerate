// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'checkout_rendering_options_param2.dart';@immutable final class PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2 {const PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2._(this.value);

factory PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2._(json),
}; }

static const PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2 $empty = PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2._('');

static const List<PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2($value)'; } 
 }
typedef PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptions = OneOf2<CheckoutRenderingOptionsParam2,PostPaymentLinksRequestInvoiceCreationInvoiceDataRenderingOptionsVariant2>;

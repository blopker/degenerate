// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2 {const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2._(this.value);

factory PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2._(json),
}; }

static const PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2 $empty = PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2._('');

static const List<PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2($value)'; } 
 }
typedef PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadata = OneOf2<Map<String,String>,PostPaymentLinksPaymentLinkRequestInvoiceCreationInvoiceDataMetadataVariant2>;

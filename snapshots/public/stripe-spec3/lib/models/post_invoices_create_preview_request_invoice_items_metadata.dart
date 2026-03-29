// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostInvoicesCreatePreviewRequestInvoiceItemsMetadataVariant2 {const PostInvoicesCreatePreviewRequestInvoiceItemsMetadataVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestInvoiceItemsMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestInvoiceItemsMetadataVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestInvoiceItemsMetadataVariant2 $empty = PostInvoicesCreatePreviewRequestInvoiceItemsMetadataVariant2._('');

static const List<PostInvoicesCreatePreviewRequestInvoiceItemsMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestInvoiceItemsMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestInvoiceItemsMetadataVariant2($value)'; } 
 }
typedef PostInvoicesCreatePreviewRequestInvoiceItemsMetadata = OneOf2<Map<String,String>,PostInvoicesCreatePreviewRequestInvoiceItemsMetadataVariant2>;
// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoiceitemsInvoiceitemRequestMetadataVariant2 {const PostInvoiceitemsInvoiceitemRequestMetadataVariant2._(this.value);

factory PostInvoiceitemsInvoiceitemRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoiceitemsInvoiceitemRequestMetadataVariant2._(json),
}; }

static const PostInvoiceitemsInvoiceitemRequestMetadataVariant2 $empty = PostInvoiceitemsInvoiceitemRequestMetadataVariant2._('');

static const List<PostInvoiceitemsInvoiceitemRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoiceitemsInvoiceitemRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoiceitemsInvoiceitemRequestMetadataVariant2($value)'; } 
 }
typedef PostInvoiceitemsInvoiceitemRequestMetadata = OneOf2<Map<String,String>,PostInvoiceitemsInvoiceitemRequestMetadataVariant2>;

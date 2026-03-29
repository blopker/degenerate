// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostInvoiceitemsRequestMetadataVariant2 {const PostInvoiceitemsRequestMetadataVariant2._(this.value);

factory PostInvoiceitemsRequestMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoiceitemsRequestMetadataVariant2._(json),
}; }

static const PostInvoiceitemsRequestMetadataVariant2 $empty = PostInvoiceitemsRequestMetadataVariant2._('');

static const List<PostInvoiceitemsRequestMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoiceitemsRequestMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoiceitemsRequestMetadataVariant2($value)'; } 
 }
typedef PostInvoiceitemsRequestMetadata = OneOf2<Map<String,String>,PostInvoiceitemsRequestMetadataVariant2>;
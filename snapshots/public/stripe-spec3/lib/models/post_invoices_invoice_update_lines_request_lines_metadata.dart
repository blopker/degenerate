// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2 {const PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2._(this.value);

factory PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2._(json),
}; }

static const PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2 $empty = PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2._('');

static const List<PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2($value)'; } 
 }
typedef PostInvoicesInvoiceUpdateLinesRequestLinesMetadata = OneOf2<Map<String,String>,PostInvoicesInvoiceUpdateLinesRequestLinesMetadataVariant2>;
// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2 {const PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2._(this.value);

factory PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2._(json),
}; }

static const PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2 $empty = PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2._('');

static const List<PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2($value)'; } 
 }
typedef PostInvoicesInvoiceAddLinesRequestLinesMetadata = OneOf2<Map<String,String>,PostInvoicesInvoiceAddLinesRequestLinesMetadataVariant2>;
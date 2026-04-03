// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transfer_data_specs2.dart';@immutable final class PostInvoicesInvoiceRequestTransferDataVariant2 {const PostInvoicesInvoiceRequestTransferDataVariant2._(this.value);

factory PostInvoicesInvoiceRequestTransferDataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesInvoiceRequestTransferDataVariant2._(json),
}; }

static const PostInvoicesInvoiceRequestTransferDataVariant2 $empty = PostInvoicesInvoiceRequestTransferDataVariant2._('');

static const List<PostInvoicesInvoiceRequestTransferDataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceRequestTransferDataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceRequestTransferDataVariant2($value)'; } 
 }
typedef PostInvoicesInvoiceRequestTransferData = OneOf2<TransferDataSpecs2,PostInvoicesInvoiceRequestTransferDataVariant2>;

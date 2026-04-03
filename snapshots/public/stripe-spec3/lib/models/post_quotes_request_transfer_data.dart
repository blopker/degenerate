// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'transfer_data_specs3.dart';@immutable final class PostQuotesRequestTransferDataVariant2 {const PostQuotesRequestTransferDataVariant2._(this.value);

factory PostQuotesRequestTransferDataVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesRequestTransferDataVariant2._(json),
}; }

static const PostQuotesRequestTransferDataVariant2 $empty = PostQuotesRequestTransferDataVariant2._('');

static const List<PostQuotesRequestTransferDataVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesRequestTransferDataVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesRequestTransferDataVariant2($value)'; } 
 }
typedef PostQuotesRequestTransferData = OneOf2<TransferDataSpecs3,PostQuotesRequestTransferDataVariant2>;

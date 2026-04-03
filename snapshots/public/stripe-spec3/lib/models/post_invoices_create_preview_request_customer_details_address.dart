// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'optional_fields_address.dart';@immutable final class PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2 {const PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2 $empty = PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2._('');

static const List<PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2($value)'; } 
 }
typedef PostInvoicesCreatePreviewRequestCustomerDetailsAddress = OneOf2<OptionalFieldsAddress,PostInvoicesCreatePreviewRequestCustomerDetailsAddressVariant2>;

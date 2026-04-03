// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_invoices_create_preview_request_discounts_variant1.dart';@immutable final class PostInvoicesCreatePreviewRequestDiscountsVariant2 {const PostInvoicesCreatePreviewRequestDiscountsVariant2._(this.value);

factory PostInvoicesCreatePreviewRequestDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostInvoicesCreatePreviewRequestDiscountsVariant2._(json),
}; }

static const PostInvoicesCreatePreviewRequestDiscountsVariant2 $empty = PostInvoicesCreatePreviewRequestDiscountsVariant2._('');

static const List<PostInvoicesCreatePreviewRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesCreatePreviewRequestDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesCreatePreviewRequestDiscountsVariant2($value)'; } 
 }
typedef PostInvoicesCreatePreviewRequestDiscounts = OneOf2<List<PostInvoicesCreatePreviewRequestDiscountsVariant1>,PostInvoicesCreatePreviewRequestDiscountsVariant2>;

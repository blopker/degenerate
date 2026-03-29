// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_quotes_quote_request_line_items_discounts_variant1.dart';final class PostQuotesQuoteRequestLineItemsDiscountsVariant2 {const PostQuotesQuoteRequestLineItemsDiscountsVariant2._(this.value);

factory PostQuotesQuoteRequestLineItemsDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestLineItemsDiscountsVariant2._(json),
}; }

static const PostQuotesQuoteRequestLineItemsDiscountsVariant2 $empty = PostQuotesQuoteRequestLineItemsDiscountsVariant2._('');

static const List<PostQuotesQuoteRequestLineItemsDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesQuoteRequestLineItemsDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesQuoteRequestLineItemsDiscountsVariant2($value)'; } 
 }
typedef PostQuotesQuoteRequestLineItemsDiscounts = OneOf2<List<PostQuotesQuoteRequestLineItemsDiscountsVariant1>,PostQuotesQuoteRequestLineItemsDiscountsVariant2>;
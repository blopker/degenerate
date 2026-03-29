// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_quotes_request_discounts_variant1.dart';final class PostQuotesRequestDiscountsVariant2 {const PostQuotesRequestDiscountsVariant2._(this.value);

factory PostQuotesRequestDiscountsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesRequestDiscountsVariant2._(json),
}; }

static const PostQuotesRequestDiscountsVariant2 $empty = PostQuotesRequestDiscountsVariant2._('');

static const List<PostQuotesRequestDiscountsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesRequestDiscountsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesRequestDiscountsVariant2($value)'; } 
 }
typedef PostQuotesRequestDiscounts = OneOf2<List<PostQuotesRequestDiscountsVariant1>,PostQuotesRequestDiscountsVariant2>;
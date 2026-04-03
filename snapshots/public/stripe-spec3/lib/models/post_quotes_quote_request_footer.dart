// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesQuoteRequestFooterVariant2 {const PostQuotesQuoteRequestFooterVariant2._(this.value);

factory PostQuotesQuoteRequestFooterVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestFooterVariant2._(json),
}; }

static const PostQuotesQuoteRequestFooterVariant2 $empty = PostQuotesQuoteRequestFooterVariant2._('');

static const List<PostQuotesQuoteRequestFooterVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesQuoteRequestFooterVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesQuoteRequestFooterVariant2($value)'; } 
 }
typedef PostQuotesQuoteRequestFooter = OneOf2<String,PostQuotesQuoteRequestFooterVariant2>;

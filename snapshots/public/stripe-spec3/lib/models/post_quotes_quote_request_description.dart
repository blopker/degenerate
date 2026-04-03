// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesQuoteRequestDescriptionVariant2 {const PostQuotesQuoteRequestDescriptionVariant2._(this.value);

factory PostQuotesQuoteRequestDescriptionVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesQuoteRequestDescriptionVariant2._(json),
}; }

static const PostQuotesQuoteRequestDescriptionVariant2 $empty = PostQuotesQuoteRequestDescriptionVariant2._('');

static const List<PostQuotesQuoteRequestDescriptionVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesQuoteRequestDescriptionVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesQuoteRequestDescriptionVariant2($value)'; } 
 }
typedef PostQuotesQuoteRequestDescription = OneOf2<String,PostQuotesQuoteRequestDescriptionVariant2>;

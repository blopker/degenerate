// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostQuotesRequestDefaultTaxRatesVariant2 {const PostQuotesRequestDefaultTaxRatesVariant2._(this.value);

factory PostQuotesRequestDefaultTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostQuotesRequestDefaultTaxRatesVariant2._(json),
}; }

static const PostQuotesRequestDefaultTaxRatesVariant2 $empty = PostQuotesRequestDefaultTaxRatesVariant2._('');

static const List<PostQuotesRequestDefaultTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostQuotesRequestDefaultTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostQuotesRequestDefaultTaxRatesVariant2($value)'; } 
 }
typedef PostQuotesRequestDefaultTaxRates = OneOf2<List<String>,PostQuotesRequestDefaultTaxRatesVariant2>;

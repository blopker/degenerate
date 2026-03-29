// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_prices_price_request_currency_options_variant1_value.dart';final class PostPricesPriceRequestCurrencyOptionsVariant2 {const PostPricesPriceRequestCurrencyOptionsVariant2._(this.value);

factory PostPricesPriceRequestCurrencyOptionsVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostPricesPriceRequestCurrencyOptionsVariant2._(json),
}; }

static const PostPricesPriceRequestCurrencyOptionsVariant2 $empty = PostPricesPriceRequestCurrencyOptionsVariant2._('');

static const List<PostPricesPriceRequestCurrencyOptionsVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPricesPriceRequestCurrencyOptionsVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPricesPriceRequestCurrencyOptionsVariant2($value)'; } 
 }
typedef PostPricesPriceRequestCurrencyOptions = OneOf2<Map<String,PostPricesPriceRequestCurrencyOptionsVariant1Value>,PostPricesPriceRequestCurrencyOptionsVariant2>;
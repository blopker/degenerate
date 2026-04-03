// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionItemsRequestTaxRatesVariant2 {const PostSubscriptionItemsRequestTaxRatesVariant2._(this.value);

factory PostSubscriptionItemsRequestTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionItemsRequestTaxRatesVariant2._(json),
}; }

static const PostSubscriptionItemsRequestTaxRatesVariant2 $empty = PostSubscriptionItemsRequestTaxRatesVariant2._('');

static const List<PostSubscriptionItemsRequestTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionItemsRequestTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionItemsRequestTaxRatesVariant2($value)'; } 
 }
typedef PostSubscriptionItemsRequestTaxRates = OneOf2<List<String>,PostSubscriptionItemsRequestTaxRatesVariant2>;

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2 {const PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2._(this.value);

factory PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2._(json),
}; }

static const PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2 $empty = PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2._('');

static const List<PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2($value)'; } 
 }
typedef PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRates = OneOf2<List<String>,PostSubscriptionsSubscriptionExposedIdRequestDefaultTaxRatesVariant2>;

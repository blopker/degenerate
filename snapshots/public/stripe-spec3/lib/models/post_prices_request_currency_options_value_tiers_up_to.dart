// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostPricesRequestCurrencyOptionsValueTiersUpToVariant1 {const PostPricesRequestCurrencyOptionsValueTiersUpToVariant1._(this.value);

factory PostPricesRequestCurrencyOptionsValueTiersUpToVariant1.fromJson(String json) { return switch (json) {
  'inf' => inf,
  _ => PostPricesRequestCurrencyOptionsValueTiersUpToVariant1._(json),
}; }

static const PostPricesRequestCurrencyOptionsValueTiersUpToVariant1 inf = PostPricesRequestCurrencyOptionsValueTiersUpToVariant1._('inf');

static const List<PostPricesRequestCurrencyOptionsValueTiersUpToVariant1> values = [inf];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPricesRequestCurrencyOptionsValueTiersUpToVariant1 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPricesRequestCurrencyOptionsValueTiersUpToVariant1($value)'; } 
 }
typedef PostPricesRequestCurrencyOptionsValueTiersUpTo = OneOf2<PostPricesRequestCurrencyOptionsValueTiersUpToVariant1,int>;
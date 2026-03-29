// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_products_id_request_marketing_features_variant1.dart';final class PostProductsIdRequestMarketingFeaturesVariant2 {const PostProductsIdRequestMarketingFeaturesVariant2._(this.value);

factory PostProductsIdRequestMarketingFeaturesVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostProductsIdRequestMarketingFeaturesVariant2._(json),
}; }

static const PostProductsIdRequestMarketingFeaturesVariant2 $empty = PostProductsIdRequestMarketingFeaturesVariant2._('');

static const List<PostProductsIdRequestMarketingFeaturesVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostProductsIdRequestMarketingFeaturesVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostProductsIdRequestMarketingFeaturesVariant2($value)'; } 
 }
typedef PostProductsIdRequestMarketingFeatures = OneOf2<List<PostProductsIdRequestMarketingFeaturesVariant1>,PostProductsIdRequestMarketingFeaturesVariant2>;
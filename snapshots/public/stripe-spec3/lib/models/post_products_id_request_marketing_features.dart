// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_products_id_request_marketing_features_variant1.dart';@immutable final class PostProductsIdRequestMarketingFeaturesVariant2 {const PostProductsIdRequestMarketingFeaturesVariant2._(this.value);

factory PostProductsIdRequestMarketingFeaturesVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostProductsIdRequestMarketingFeaturesVariant2._(json),
};}

static const PostProductsIdRequestMarketingFeaturesVariant2 $empty = PostProductsIdRequestMarketingFeaturesVariant2._('');

static const List<PostProductsIdRequestMarketingFeaturesVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostProductsIdRequestMarketingFeaturesVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostProductsIdRequestMarketingFeaturesVariant2($value)';}
}
/// A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://docs.stripe.com/payments/checkout/pricing-table).
@immutable
final class PostProductsIdRequestMarketingFeatures {
  const PostProductsIdRequestMarketingFeatures({this.listPostProductsIdRequestMarketingFeaturesVariant1 = const Omittable.absent(),
this.postProductsIdRequestMarketingFeaturesVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostProductsIdRequestMarketingFeatures._({required this.rawValue, required this.listPostProductsIdRequestMarketingFeaturesVariant1,
required this.postProductsIdRequestMarketingFeaturesVariant2,});
  factory PostProductsIdRequestMarketingFeatures.fromJson(Object? json) => PostProductsIdRequestMarketingFeatures._(
    rawValue: Omittable(json),
    listPostProductsIdRequestMarketingFeaturesVariant1: parseAnyOfVariant<List<PostProductsIdRequestMarketingFeaturesVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostProductsIdRequestMarketingFeaturesVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postProductsIdRequestMarketingFeaturesVariant2: parseAnyOfVariant<PostProductsIdRequestMarketingFeaturesVariant2>(json, (value) => PostProductsIdRequestMarketingFeaturesVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostProductsIdRequestMarketingFeaturesVariant1>> listPostProductsIdRequestMarketingFeaturesVariant1;
final Omittable<PostProductsIdRequestMarketingFeaturesVariant2> postProductsIdRequestMarketingFeaturesVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostProductsIdRequestMarketingFeaturesVariant1.isPresent || postProductsIdRequestMarketingFeaturesVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostProductsIdRequestMarketingFeaturesVariant1.isPresent) listPostProductsIdRequestMarketingFeaturesVariant1.value?.map((e) => e.toJson()).toList(),
if (postProductsIdRequestMarketingFeaturesVariant2.isPresent) postProductsIdRequestMarketingFeaturesVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostProductsIdRequestMarketingFeatures && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostProductsIdRequestMarketingFeatures(${toJson()})';
}

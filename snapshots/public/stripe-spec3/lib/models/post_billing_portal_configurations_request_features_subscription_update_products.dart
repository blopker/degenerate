// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_portal_configurations_request_features_subscription_update_products_variant1.dart';@immutable final class PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2 {const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2._(this.value);

factory PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2._(json),
};}

static const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2 $empty = PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2._('');

static const List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2($value)';}
}

@immutable
final class PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProducts {
  const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProducts({this.listPostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant1 = const Omittable.absent(),
this.postBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProducts._({required this.rawValue, required this.listPostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant1,
required this.postBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2,});
  factory PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProducts.fromJson(Object? json) => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProducts._(
    rawValue: Omittable(json),
    listPostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant1: parseAnyOfVariant<List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2>(json, (value) => PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant1>> listPostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant1;
final Omittable<PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2> postBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant1.isPresent || postBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant1.isPresent) listPostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant1.value?.map((e) => e.toJson()).toList(),
if (postBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2.isPresent) postBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProductsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProducts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsRequestFeaturesSubscriptionUpdateProducts(${toJson()})';
}

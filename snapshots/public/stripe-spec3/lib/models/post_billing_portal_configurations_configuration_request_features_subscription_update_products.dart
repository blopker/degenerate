// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_portal_configurations_configuration_request_features_subscription_update_products_variant1.dart';@immutable final class PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2 {const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2._(this.value);

factory PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2._(json),
};}

static const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2 $empty = PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2._('');

static const List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2($value)';}
}

@immutable
final class PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProducts {
  const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProducts({this.listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant1 = const Omittable.absent(),
this.postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProducts._({required this.rawValue, required this.listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant1,
required this.postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2,});
  factory PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProducts.fromJson(Object? json) => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProducts._(
    rawValue: Omittable(json),
    listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant1: parseAnyOfVariant<List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant1>>(json, (value) => (value! as List<dynamic>).map((e) => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant1.fromJson(e as Map<String, dynamic>)).toList()),
postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2: parseAnyOfVariant<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2>(json, (value) => PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<List<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant1>> listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant1;
final Omittable<PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2> postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant1.isPresent || postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant1.isPresent) listPostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant1.value?.map((e) => e.toJson()).toList(),
if (postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2.isPresent) postBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProductsVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProducts && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostBillingPortalConfigurationsConfigurationRequestFeaturesSubscriptionUpdateProducts(${toJson()})';
}

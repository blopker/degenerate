// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostProductsProductFeaturesRequest {const PostProductsProductFeaturesRequest({required this.entitlementFeature, this.expand, });

factory PostProductsProductFeaturesRequest.fromJson(Map<String, dynamic> json) { return PostProductsProductFeaturesRequest(
  entitlementFeature: json['entitlement_feature'] as String,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// The ID of the [Feature](https://docs.stripe.com/api/entitlements/feature) object attached to this product.
final String entitlementFeature;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  'entitlement_feature': entitlementFeature,
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('entitlement_feature') && json['entitlement_feature'] is String; } 
PostProductsProductFeaturesRequest copyWith({String? entitlementFeature, List<String> Function()? expand, }) { return PostProductsProductFeaturesRequest(
  entitlementFeature: entitlementFeature ?? this.entitlementFeature,
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostProductsProductFeaturesRequest &&
          entitlementFeature == other.entitlementFeature &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hash(entitlementFeature, Object.hashAll(expand ?? const [])); } 
@override String toString() { return 'PostProductsProductFeaturesRequest(entitlementFeature: $entitlementFeature, expand: $expand)'; } 
 }

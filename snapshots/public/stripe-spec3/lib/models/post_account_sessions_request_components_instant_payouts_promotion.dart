// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_account_sessions_request_components_instant_payouts_promotion_features.dart';@immutable final class PostAccountSessionsRequestComponentsInstantPayoutsPromotion {const PostAccountSessionsRequestComponentsInstantPayoutsPromotion({required this.enabled, this.features, });

factory PostAccountSessionsRequestComponentsInstantPayoutsPromotion.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequestComponentsInstantPayoutsPromotion(
  enabled: json['enabled'] as bool,
  features: json['features'] != null ? PostAccountSessionsRequestComponentsInstantPayoutsPromotionFeatures.fromJson(json['features'] as Map<String, dynamic>) : null,
); }

final bool enabled;

final PostAccountSessionsRequestComponentsInstantPayoutsPromotionFeatures? features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (features != null) 'features': features?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostAccountSessionsRequestComponentsInstantPayoutsPromotion copyWith({bool? enabled, PostAccountSessionsRequestComponentsInstantPayoutsPromotionFeatures Function()? features, }) { return PostAccountSessionsRequestComponentsInstantPayoutsPromotion(
  enabled: enabled ?? this.enabled,
  features: features != null ? features() : this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequestComponentsInstantPayoutsPromotion &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'PostAccountSessionsRequestComponentsInstantPayoutsPromotion(enabled: $enabled, features: $features)'; } 
 }

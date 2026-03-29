// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_account_sessions_request_components_issuing_card_features.dart';final class PostAccountSessionsRequestComponentsIssuingCard {const PostAccountSessionsRequestComponentsIssuingCard({required this.enabled, this.features, });

factory PostAccountSessionsRequestComponentsIssuingCard.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequestComponentsIssuingCard(
  enabled: json['enabled'] as bool,
  features: json['features'] != null ? PostAccountSessionsRequestComponentsIssuingCardFeatures.fromJson(json['features'] as Map<String, dynamic>) : null,
); }

final bool enabled;

final PostAccountSessionsRequestComponentsIssuingCardFeatures? features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (features != null) 'features': features?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostAccountSessionsRequestComponentsIssuingCard copyWith({bool? enabled, PostAccountSessionsRequestComponentsIssuingCardFeatures Function()? features, }) { return PostAccountSessionsRequestComponentsIssuingCard(
  enabled: enabled ?? this.enabled,
  features: features != null ? features() : this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequestComponentsIssuingCard &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'PostAccountSessionsRequestComponentsIssuingCard(enabled: $enabled, features: $features)'; } 
 }

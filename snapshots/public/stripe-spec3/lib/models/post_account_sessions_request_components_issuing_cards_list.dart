// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_account_sessions_request_components_issuing_cards_list_features.dart';@immutable final class PostAccountSessionsRequestComponentsIssuingCardsList {const PostAccountSessionsRequestComponentsIssuingCardsList({required this.enabled, this.features, });

factory PostAccountSessionsRequestComponentsIssuingCardsList.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequestComponentsIssuingCardsList(
  enabled: json['enabled'] as bool,
  features: json['features'] != null ? PostAccountSessionsRequestComponentsIssuingCardsListFeatures.fromJson(json['features'] as Map<String, dynamic>) : null,
); }

final bool enabled;

final PostAccountSessionsRequestComponentsIssuingCardsListFeatures? features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (features != null) 'features': features?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostAccountSessionsRequestComponentsIssuingCardsList copyWith({bool? enabled, PostAccountSessionsRequestComponentsIssuingCardsListFeatures Function()? features, }) { return PostAccountSessionsRequestComponentsIssuingCardsList(
  enabled: enabled ?? this.enabled,
  features: features != null ? features() : this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequestComponentsIssuingCardsList &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'PostAccountSessionsRequestComponentsIssuingCardsList(enabled: $enabled, features: $features)'; } 
 }

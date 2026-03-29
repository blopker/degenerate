// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_account_sessions_request_components_tax_registrations_features.dart';final class PostAccountSessionsRequestComponentsTaxRegistrations {const PostAccountSessionsRequestComponentsTaxRegistrations({required this.enabled, this.features, });

factory PostAccountSessionsRequestComponentsTaxRegistrations.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequestComponentsTaxRegistrations(
  enabled: json['enabled'] as bool,
  features: json['features'] != null ? PostAccountSessionsRequestComponentsTaxRegistrationsFeatures.fromJson(json['features'] as Map<String, dynamic>) : null,
); }

final bool enabled;

final PostAccountSessionsRequestComponentsTaxRegistrationsFeatures? features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (features != null) 'features': features?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostAccountSessionsRequestComponentsTaxRegistrations copyWith({bool? enabled, PostAccountSessionsRequestComponentsTaxRegistrationsFeatures Function()? features, }) { return PostAccountSessionsRequestComponentsTaxRegistrations(
  enabled: enabled ?? this.enabled,
  features: features != null ? features() : this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequestComponentsTaxRegistrations &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'PostAccountSessionsRequestComponentsTaxRegistrations(enabled: $enabled, features: $features)'; } 
 }

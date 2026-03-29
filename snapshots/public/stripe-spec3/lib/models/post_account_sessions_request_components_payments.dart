// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_account_sessions_request_components_payments_features.dart';final class PostAccountSessionsRequestComponentsPayments {const PostAccountSessionsRequestComponentsPayments({required this.enabled, this.features, });

factory PostAccountSessionsRequestComponentsPayments.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequestComponentsPayments(
  enabled: json['enabled'] as bool,
  features: json['features'] != null ? PostAccountSessionsRequestComponentsPaymentsFeatures.fromJson(json['features'] as Map<String, dynamic>) : null,
); }

final bool enabled;

final PostAccountSessionsRequestComponentsPaymentsFeatures? features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (features != null) 'features': features?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostAccountSessionsRequestComponentsPayments copyWith({bool? enabled, PostAccountSessionsRequestComponentsPaymentsFeatures Function()? features, }) { return PostAccountSessionsRequestComponentsPayments(
  enabled: enabled ?? this.enabled,
  features: features != null ? features() : this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequestComponentsPayments &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'PostAccountSessionsRequestComponentsPayments(enabled: $enabled, features: $features)'; } 
 }

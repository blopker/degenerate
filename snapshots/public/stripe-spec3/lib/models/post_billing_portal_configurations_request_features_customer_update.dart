// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_portal_configurations_request_features_customer_update_allowed_updates.dart';@immutable final class PostBillingPortalConfigurationsRequestFeaturesCustomerUpdate {const PostBillingPortalConfigurationsRequestFeaturesCustomerUpdate({required this.enabled, this.allowedUpdates, });

factory PostBillingPortalConfigurationsRequestFeaturesCustomerUpdate.fromJson(Map<String, dynamic> json) { return PostBillingPortalConfigurationsRequestFeaturesCustomerUpdate(
  allowedUpdates: json['allowed_updates'] != null ? OneOf2.parse(json['allowed_updates'], fromA: (v) => (v as List<dynamic>).map((e) => PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant1.fromJson(e as String)).toList(), fromB: (v) => PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdatesVariant2.fromJson(v as String),) : null,
  enabled: json['enabled'] as bool,
); }

final PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdates? allowedUpdates;

final bool enabled;

Map<String, dynamic> toJson() { return {
  if (allowedUpdates != null) 'allowed_updates': allowedUpdates?.toJson(),
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostBillingPortalConfigurationsRequestFeaturesCustomerUpdate copyWith({PostBillingPortalConfigurationsRequestFeaturesCustomerUpdateAllowedUpdates Function()? allowedUpdates, bool? enabled, }) { return PostBillingPortalConfigurationsRequestFeaturesCustomerUpdate(
  allowedUpdates: allowedUpdates != null ? allowedUpdates() : this.allowedUpdates,
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalConfigurationsRequestFeaturesCustomerUpdate &&
          allowedUpdates == other.allowedUpdates &&
          enabled == other.enabled; } 
@override int get hashCode { return Object.hash(allowedUpdates, enabled); } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestFeaturesCustomerUpdate(allowedUpdates: $allowedUpdates, enabled: $enabled)'; } 
 }

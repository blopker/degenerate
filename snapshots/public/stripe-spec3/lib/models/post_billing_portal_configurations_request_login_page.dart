// GENERATED CODE - DO NOT MODIFY BY HAND

/// The hosted login page for this configuration. Learn more about the portal login page in our [integration docs](https://stripe.com/docs/billing/subscriptions/integrating-customer-portal#share).
final class PostBillingPortalConfigurationsRequestLoginPage {const PostBillingPortalConfigurationsRequestLoginPage({required this.enabled});

factory PostBillingPortalConfigurationsRequestLoginPage.fromJson(Map<String, dynamic> json) { return PostBillingPortalConfigurationsRequestLoginPage(
  enabled: json['enabled'] as bool,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostBillingPortalConfigurationsRequestLoginPage copyWith({bool? enabled}) { return PostBillingPortalConfigurationsRequestLoginPage(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalConfigurationsRequestLoginPage &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestLoginPage(enabled: $enabled)'; } 
 }

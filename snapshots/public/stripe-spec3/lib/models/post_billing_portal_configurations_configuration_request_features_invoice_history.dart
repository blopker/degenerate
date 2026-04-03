// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsConfigurationRequestFeaturesInvoiceHistory {const PostBillingPortalConfigurationsConfigurationRequestFeaturesInvoiceHistory({required this.enabled});

factory PostBillingPortalConfigurationsConfigurationRequestFeaturesInvoiceHistory.fromJson(Map<String, dynamic> json) { return PostBillingPortalConfigurationsConfigurationRequestFeaturesInvoiceHistory(
  enabled: json['enabled'] as bool,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostBillingPortalConfigurationsConfigurationRequestFeaturesInvoiceHistory copyWith({bool? enabled}) { return PostBillingPortalConfigurationsConfigurationRequestFeaturesInvoiceHistory(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalConfigurationsConfigurationRequestFeaturesInvoiceHistory &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsConfigurationRequestFeaturesInvoiceHistory(enabled: $enabled)'; } 
 }

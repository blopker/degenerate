// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostBillingPortalConfigurationsRequestFeaturesInvoiceHistory {const PostBillingPortalConfigurationsRequestFeaturesInvoiceHistory({required this.enabled});

factory PostBillingPortalConfigurationsRequestFeaturesInvoiceHistory.fromJson(Map<String, dynamic> json) { return PostBillingPortalConfigurationsRequestFeaturesInvoiceHistory(
  enabled: json['enabled'] as bool,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostBillingPortalConfigurationsRequestFeaturesInvoiceHistory copyWith({bool? enabled}) { return PostBillingPortalConfigurationsRequestFeaturesInvoiceHistory(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalConfigurationsRequestFeaturesInvoiceHistory &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestFeaturesInvoiceHistory(enabled: $enabled)'; } 
 }

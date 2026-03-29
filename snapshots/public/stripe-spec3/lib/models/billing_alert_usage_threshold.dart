// GENERATED CODE - DO NOT MODIFY BY HAND

import 'thresholds_resource_usage_threshold_config.dart';/// Encapsulates configuration of the alert to monitor usage on a specific [Billing Meter](https://docs.stripe.com/api/billing/meter).
final class BillingAlertUsageThreshold {const BillingAlertUsageThreshold({this.thresholdsResourceUsageThresholdConfig});

factory BillingAlertUsageThreshold.fromJson(Map<String, dynamic> json) { return BillingAlertUsageThreshold(
  thresholdsResourceUsageThresholdConfig: ThresholdsResourceUsageThresholdConfig.canParse(json) ? ThresholdsResourceUsageThresholdConfig.fromJson(json) : null,
); }

final ThresholdsResourceUsageThresholdConfig? thresholdsResourceUsageThresholdConfig;

/// At least one variant must be present.
bool get isValid { return thresholdsResourceUsageThresholdConfig != null; } 
Map<String, dynamic> toJson() { return {
  ...?thresholdsResourceUsageThresholdConfig?.toJson(),
}; } 
 }

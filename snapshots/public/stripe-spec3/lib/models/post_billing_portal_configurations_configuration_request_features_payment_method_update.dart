// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_portal_configurations_configuration_request_features_payment_method_update_payment_method_configuration.dart';final class PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdate {const PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdate({required this.enabled, this.paymentMethodConfiguration, });

factory PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdate.fromJson(Map<String, dynamic> json) { return PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdate(
  enabled: json['enabled'] as bool,
  paymentMethodConfiguration: json['payment_method_configuration'] != null ? OneOf2.parse(json['payment_method_configuration'], fromA: (v) => v as String, fromB: (v) => PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdatePaymentMethodConfigurationVariant2.fromJson(v as String),) : null,
); }

final bool enabled;

final PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdatePaymentMethodConfiguration? paymentMethodConfiguration;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (paymentMethodConfiguration != null) 'payment_method_configuration': paymentMethodConfiguration?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdate copyWith({bool? enabled, PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdatePaymentMethodConfiguration Function()? paymentMethodConfiguration, }) { return PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdate(
  enabled: enabled ?? this.enabled,
  paymentMethodConfiguration: paymentMethodConfiguration != null ? paymentMethodConfiguration() : this.paymentMethodConfiguration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdate &&
          enabled == other.enabled &&
          paymentMethodConfiguration == other.paymentMethodConfiguration; } 
@override int get hashCode { return Object.hash(enabled, paymentMethodConfiguration); } 
@override String toString() { return 'PostBillingPortalConfigurationsConfigurationRequestFeaturesPaymentMethodUpdate(enabled: $enabled, paymentMethodConfiguration: $paymentMethodConfiguration)'; } 
 }

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PortalPaymentMethodUpdate {const PortalPaymentMethodUpdate({required this.enabled, this.paymentMethodConfiguration = const Omittable.absent(), });

factory PortalPaymentMethodUpdate.fromJson(Map<String, dynamic> json) { return PortalPaymentMethodUpdate(
  enabled: json['enabled'] as bool,
  paymentMethodConfiguration: json.containsKey('payment_method_configuration') ? Omittable(json['payment_method_configuration'] as String?) : const Omittable.absent(),
); }

/// Whether the feature is enabled.
final bool enabled;

/// The [Payment Method Configuration](/api/payment_method_configurations) to use for this portal session. When specified, customers will be able to update their payment method to one of the options specified by the payment method configuration. If not set, the default payment method configuration is used.
final Omittable<String?> paymentMethodConfiguration;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (paymentMethodConfiguration.isPresent) 'payment_method_configuration': paymentMethodConfiguration.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PortalPaymentMethodUpdate copyWith({bool? enabled, Omittable<String?>? paymentMethodConfiguration, }) { return PortalPaymentMethodUpdate(
  enabled: enabled ?? this.enabled,
  paymentMethodConfiguration: paymentMethodConfiguration ?? this.paymentMethodConfiguration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PortalPaymentMethodUpdate &&
          enabled == other.enabled &&
          paymentMethodConfiguration == other.paymentMethodConfiguration; } 
@override int get hashCode { return Object.hash(enabled, paymentMethodConfiguration); } 
@override String toString() { return 'PortalPaymentMethodUpdate(enabled: $enabled, paymentMethodConfiguration: $paymentMethodConfiguration)'; } 
 }

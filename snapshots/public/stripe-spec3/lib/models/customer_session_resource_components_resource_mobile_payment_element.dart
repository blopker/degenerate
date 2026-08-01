// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_session_resource_components_resource_mobile_payment_element_resource_features.dart';/// This hash contains whether the mobile payment element is enabled and the features it supports.
@immutable final class CustomerSessionResourceComponentsResourceMobilePaymentElement {const CustomerSessionResourceComponentsResourceMobilePaymentElement({required this.enabled, this.features = const Omittable.absent(), });

factory CustomerSessionResourceComponentsResourceMobilePaymentElement.fromJson(Map<String, dynamic> json) { return CustomerSessionResourceComponentsResourceMobilePaymentElement(
  enabled: json['enabled'] as bool,
  features: json.containsKey('features') ? Omittable(json['features'] != null ? CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures.fromJson(json['features'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Whether the mobile payment element is enabled.
final bool enabled;

/// This hash defines whether the mobile payment element supports certain features.
final Omittable<CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures?> features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (features.isPresent) 'features': features.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
CustomerSessionResourceComponentsResourceMobilePaymentElement copyWith({bool? enabled, Omittable<CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeatures?>? features, }) { return CustomerSessionResourceComponentsResourceMobilePaymentElement(
  enabled: enabled ?? this.enabled,
  features: features ?? this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomerSessionResourceComponentsResourceMobilePaymentElement &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'CustomerSessionResourceComponentsResourceMobilePaymentElement(enabled: $enabled, features: $features)'; } 
 }

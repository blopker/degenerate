// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_session_resource_components_resource_payment_element_resource_features.dart';/// This hash contains whether the Payment Element is enabled and the features it supports.
@immutable final class CustomerSessionResourceComponentsResourcePaymentElement {const CustomerSessionResourceComponentsResourcePaymentElement({required this.enabled, this.features = const Omittable.absent(), });

factory CustomerSessionResourceComponentsResourcePaymentElement.fromJson(Map<String, dynamic> json) { return CustomerSessionResourceComponentsResourcePaymentElement(
  enabled: json['enabled'] as bool,
  features: json.containsKey('features') ? Omittable(json['features'] != null ? CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures.fromJson(json['features'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Whether the Payment Element is enabled.
final bool enabled;

/// This hash defines whether the Payment Element supports certain features.
final Omittable<CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures?> features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (features.isPresent) 'features': features.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
CustomerSessionResourceComponentsResourcePaymentElement copyWith({bool? enabled, Omittable<CustomerSessionResourceComponentsResourcePaymentElementResourceFeatures?>? features, }) { return CustomerSessionResourceComponentsResourcePaymentElement(
  enabled: enabled ?? this.enabled,
  features: features ?? this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomerSessionResourceComponentsResourcePaymentElement &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'CustomerSessionResourceComponentsResourcePaymentElement(enabled: $enabled, features: $features)'; } 
 }

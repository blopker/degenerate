// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'customer_session_resource_components_resource_customer_sheet_resource_features.dart';/// This hash contains whether the customer sheet is enabled and the features it supports.
@immutable final class CustomerSessionResourceComponentsResourceCustomerSheet {const CustomerSessionResourceComponentsResourceCustomerSheet({required this.enabled, this.features = const Omittable.absent(), });

factory CustomerSessionResourceComponentsResourceCustomerSheet.fromJson(Map<String, dynamic> json) { return CustomerSessionResourceComponentsResourceCustomerSheet(
  enabled: json['enabled'] as bool,
  features: json.containsKey('features') ? Omittable(json['features'] != null ? CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures.fromJson(json['features'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Whether the customer sheet is enabled.
final bool enabled;

/// This hash defines whether the customer sheet supports certain features.
final Omittable<CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures?> features;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (features.isPresent) 'features': features.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
CustomerSessionResourceComponentsResourceCustomerSheet copyWith({bool? enabled, Omittable<CustomerSessionResourceComponentsResourceCustomerSheetResourceFeatures?>? features, }) { return CustomerSessionResourceComponentsResourceCustomerSheet(
  enabled: enabled ?? this.enabled,
  features: features ?? this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomerSessionResourceComponentsResourceCustomerSheet &&
          enabled == other.enabled &&
          features == other.features; } 
@override int get hashCode { return Object.hash(enabled, features); } 
@override String toString() { return 'CustomerSessionResourceComponentsResourceCustomerSheet(enabled: $enabled, features: $features)'; } 
 }

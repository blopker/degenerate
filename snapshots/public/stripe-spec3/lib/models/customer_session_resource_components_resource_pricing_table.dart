// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// This hash contains whether the pricing table is enabled.
@immutable final class CustomerSessionResourceComponentsResourcePricingTable {const CustomerSessionResourceComponentsResourcePricingTable({required this.enabled});

factory CustomerSessionResourceComponentsResourcePricingTable.fromJson(Map<String, dynamic> json) { return CustomerSessionResourceComponentsResourcePricingTable(
  enabled: json['enabled'] as bool,
); }

/// Whether the pricing table is enabled.
final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
CustomerSessionResourceComponentsResourcePricingTable copyWith({bool? enabled}) { return CustomerSessionResourceComponentsResourcePricingTable(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomerSessionResourceComponentsResourcePricingTable &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'CustomerSessionResourceComponentsResourcePricingTable(enabled: $enabled)'; } 
 }

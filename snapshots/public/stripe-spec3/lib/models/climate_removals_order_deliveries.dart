// GENERATED CODE - DO NOT MODIFY BY HAND

import 'climate_removals_order_deliveries_location.dart';import 'climate_supplier.dart';/// The delivery of a specified quantity of carbon for an order.
final class ClimateRemovalsOrderDeliveries {const ClimateRemovalsOrderDeliveries({required this.deliveredAt, this.location, required this.metricTons, this.registryUrl, required this.supplier, });

factory ClimateRemovalsOrderDeliveries.fromJson(Map<String, dynamic> json) { return ClimateRemovalsOrderDeliveries(
  deliveredAt: (json['delivered_at'] as num).toInt(),
  location: json['location'] != null ? ClimateRemovalsOrderDeliveriesLocation.fromJson(json['location'] as Map<String, dynamic>) : null,
  metricTons: json['metric_tons'] as String,
  registryUrl: json['registry_url'] as String?,
  supplier: ClimateSupplier.fromJson(json['supplier'] as Map<String, dynamic>),
); }

/// Time at which the delivery occurred. Measured in seconds since the Unix epoch.
final int deliveredAt;

/// Specific location of this delivery.
final ClimateRemovalsOrderDeliveriesLocation? location;

/// Quantity of carbon removal supplied by this delivery.
final String metricTons;

/// Once retired, a URL to the registry entry for the tons from this delivery.
final String? registryUrl;

final ClimateSupplier supplier;

Map<String, dynamic> toJson() { return {
  'delivered_at': deliveredAt,
  if (location != null) 'location': location?.toJson(),
  'metric_tons': metricTons,
  'registry_url': ?registryUrl,
  'supplier': supplier.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('delivered_at') && json['delivered_at'] is num &&
      json.containsKey('metric_tons') && json['metric_tons'] is String &&
      json.containsKey('supplier'); } 
ClimateRemovalsOrderDeliveries copyWith({int? deliveredAt, ClimateRemovalsOrderDeliveriesLocation? Function()? location, String? metricTons, String? Function()? registryUrl, ClimateSupplier? supplier, }) { return ClimateRemovalsOrderDeliveries(
  deliveredAt: deliveredAt ?? this.deliveredAt,
  location: location != null ? location() : this.location,
  metricTons: metricTons ?? this.metricTons,
  registryUrl: registryUrl != null ? registryUrl() : this.registryUrl,
  supplier: supplier ?? this.supplier,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ClimateRemovalsOrderDeliveries &&
          deliveredAt == other.deliveredAt &&
          location == other.location &&
          metricTons == other.metricTons &&
          registryUrl == other.registryUrl &&
          supplier == other.supplier; } 
@override int get hashCode { return Object.hash(deliveredAt, location, metricTons, registryUrl, supplier); } 
@override String toString() { return 'ClimateRemovalsOrderDeliveries(deliveredAt: $deliveredAt, location: $location, metricTons: $metricTons, registryUrl: $registryUrl, supplier: $supplier)'; } 
 }

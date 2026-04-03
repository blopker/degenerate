// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'climate_removals_products_price.dart';import 'climate_supplier.dart';/// String representing the object's type. Objects of the same type share the same value.
@immutable final class ClimateProductObject {const ClimateProductObject._(this.value);

factory ClimateProductObject.fromJson(String json) { return switch (json) {
  'climate.product' => climateProduct,
  _ => ClimateProductObject._(json),
}; }

static const ClimateProductObject climateProduct = ClimateProductObject._('climate.product');

static const List<ClimateProductObject> values = [climateProduct];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ClimateProductObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ClimateProductObject($value)'; } 
 }
/// A Climate product represents a type of carbon removal unit available for reservation.
/// You can retrieve it to see the current price and availability.
@immutable final class ClimateProduct {const ClimateProduct({required this.created, required this.currentPricesPerMetricTon, required this.id, required this.livemode, required this.metricTonsAvailable, required this.name, required this.object, required this.suppliers, this.deliveryYear, });

factory ClimateProduct.fromJson(Map<String, dynamic> json) { return ClimateProduct(
  created: (json['created'] as num).toInt(),
  currentPricesPerMetricTon: (json['current_prices_per_metric_ton'] as Map<String, dynamic>).map((k, v) => MapEntry(k, ClimateRemovalsProductsPrice.fromJson(v as Map<String, dynamic>))),
  deliveryYear: json['delivery_year'] != null ? (json['delivery_year'] as num).toInt() : null,
  id: json['id'] as String,
  livemode: json['livemode'] as bool,
  metricTonsAvailable: json['metric_tons_available'] as String,
  name: json['name'] as String,
  object: ClimateProductObject.fromJson(json['object'] as String),
  suppliers: (json['suppliers'] as List<dynamic>).map((e) => ClimateSupplier.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Time at which the object was created. Measured in seconds since the Unix epoch.
final int created;

/// Current prices for a metric ton of carbon removal in a currency's smallest unit.
final Map<String,ClimateRemovalsProductsPrice> currentPricesPerMetricTon;

/// The year in which the carbon removal is expected to be delivered.
final int? deliveryYear;

/// Unique identifier for the object. For convenience, Climate product IDs are human-readable strings
/// that start with `climsku_`. See [carbon removal inventory](https://stripe.com/docs/climate/orders/carbon-removal-inventory)
/// for a list of available carbon removal products.
final String id;

/// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
final bool livemode;

/// The quantity of metric tons available for reservation.
final String metricTonsAvailable;

/// The Climate product's name.
final String name;

/// String representing the object's type. Objects of the same type share the same value.
final ClimateProductObject object;

/// The carbon removal suppliers that fulfill orders for this Climate product.
final List<ClimateSupplier> suppliers;

Map<String, dynamic> toJson() { return {
  'created': created,
  'current_prices_per_metric_ton': currentPricesPerMetricTon.map((k, v) => MapEntry(k, v.toJson())),
  'delivery_year': ?deliveryYear,
  'id': id,
  'livemode': livemode,
  'metric_tons_available': metricTonsAvailable,
  'name': name,
  'object': object.toJson(),
  'suppliers': suppliers.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') && json['created'] is num &&
      json.containsKey('current_prices_per_metric_ton') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('livemode') && json['livemode'] is bool &&
      json.containsKey('metric_tons_available') && json['metric_tons_available'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('object') &&
      json.containsKey('suppliers'); } 
ClimateProduct copyWith({int? created, Map<String,ClimateRemovalsProductsPrice>? currentPricesPerMetricTon, int? Function()? deliveryYear, String? id, bool? livemode, String? metricTonsAvailable, String? name, ClimateProductObject? object, List<ClimateSupplier>? suppliers, }) { return ClimateProduct(
  created: created ?? this.created,
  currentPricesPerMetricTon: currentPricesPerMetricTon ?? this.currentPricesPerMetricTon,
  deliveryYear: deliveryYear != null ? deliveryYear() : this.deliveryYear,
  id: id ?? this.id,
  livemode: livemode ?? this.livemode,
  metricTonsAvailable: metricTonsAvailable ?? this.metricTonsAvailable,
  name: name ?? this.name,
  object: object ?? this.object,
  suppliers: suppliers ?? this.suppliers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ClimateProduct &&
          created == other.created &&
          currentPricesPerMetricTon == other.currentPricesPerMetricTon &&
          deliveryYear == other.deliveryYear &&
          id == other.id &&
          livemode == other.livemode &&
          metricTonsAvailable == other.metricTonsAvailable &&
          name == other.name &&
          object == other.object &&
          listEquals(suppliers, other.suppliers); } 
@override int get hashCode { return Object.hash(created, currentPricesPerMetricTon, deliveryYear, id, livemode, metricTonsAvailable, name, object, Object.hashAll(suppliers)); } 
@override String toString() { return 'ClimateProduct(created: $created, currentPricesPerMetricTon: $currentPricesPerMetricTon, deliveryYear: $deliveryYear, id: $id, livemode: $livemode, metricTonsAvailable: $metricTonsAvailable, name: $name, object: $object, suppliers: $suppliers)'; } 
 }

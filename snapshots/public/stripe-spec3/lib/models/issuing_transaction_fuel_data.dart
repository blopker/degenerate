// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class IssuingTransactionFuelData {const IssuingTransactionFuelData({required this.type, required this.unit, required this.unitCostDecimal, this.industryProductCode = const Omittable.absent(), this.quantityDecimal = const Omittable.absent(), });

factory IssuingTransactionFuelData.fromJson(Map<String, dynamic> json) { return IssuingTransactionFuelData(
  industryProductCode: json.containsKey('industry_product_code') ? Omittable(json['industry_product_code'] as String?) : const Omittable.absent(),
  quantityDecimal: json.containsKey('quantity_decimal') ? Omittable(json['quantity_decimal'] as String?) : const Omittable.absent(),
  type: json['type'] as String,
  unit: json['unit'] as String,
  unitCostDecimal: json['unit_cost_decimal'] as String,
); }

/// [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
final Omittable<String?> industryProductCode;

/// The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
final Omittable<String?> quantityDecimal;

/// The type of fuel that was purchased. One of `diesel`, `unleaded_plus`, `unleaded_regular`, `unleaded_super`, or `other`.
final String type;

/// The units for `quantity_decimal`. One of `charging_minute`, `imperial_gallon`, `kilogram`, `kilowatt_hour`, `liter`, `pound`, `us_gallon`, or `other`.
final String unit;

/// The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
final String unitCostDecimal;

Map<String, dynamic> toJson() { return {
  if (industryProductCode.isPresent) 'industry_product_code': industryProductCode.value,
  if (quantityDecimal.isPresent) 'quantity_decimal': quantityDecimal.value,
  'type': type,
  'unit': unit,
  'unit_cost_decimal': unitCostDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('unit') && json['unit'] is String &&
      json.containsKey('unit_cost_decimal') && json['unit_cost_decimal'] is String; } 
IssuingTransactionFuelData copyWith({Omittable<String?>? industryProductCode, Omittable<String?>? quantityDecimal, String? type, String? unit, String? unitCostDecimal, }) { return IssuingTransactionFuelData(
  industryProductCode: industryProductCode ?? this.industryProductCode,
  quantityDecimal: quantityDecimal ?? this.quantityDecimal,
  type: type ?? this.type,
  unit: unit ?? this.unit,
  unitCostDecimal: unitCostDecimal ?? this.unitCostDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionFuelData &&
          industryProductCode == other.industryProductCode &&
          quantityDecimal == other.quantityDecimal &&
          type == other.type &&
          unit == other.unit &&
          unitCostDecimal == other.unitCostDecimal; } 
@override int get hashCode { return Object.hash(industryProductCode, quantityDecimal, type, unit, unitCostDecimal); } 
@override String toString() { return 'IssuingTransactionFuelData(industryProductCode: $industryProductCode, quantityDecimal: $quantityDecimal, type: $type, unit: $unit, unitCostDecimal: $unitCostDecimal)'; } 
 }

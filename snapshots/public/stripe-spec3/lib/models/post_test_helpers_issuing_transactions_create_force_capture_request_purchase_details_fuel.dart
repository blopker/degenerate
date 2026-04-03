// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType {const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType._(this.value);

factory PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType.fromJson(String json) { return switch (json) {
  'diesel' => diesel,
  'other' => $other,
  'unleaded_plus' => unleadedPlus,
  'unleaded_regular' => unleadedRegular,
  'unleaded_super' => unleadedSuper,
  _ => PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType._(json),
}; }

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType diesel = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType._('diesel');

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType $other = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType._('other');

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType unleadedPlus = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType._('unleaded_plus');

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType unleadedRegular = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType._('unleaded_regular');

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType unleadedSuper = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType._('unleaded_super');

static const List<PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType> values = [diesel, $other, unleadedPlus, unleadedRegular, unleadedSuper];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType($value)'; } 
 }
@immutable final class PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit {const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit._(this.value);

factory PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit.fromJson(String json) { return switch (json) {
  'charging_minute' => chargingMinute,
  'imperial_gallon' => imperialGallon,
  'kilogram' => kilogram,
  'kilowatt_hour' => kilowattHour,
  'liter' => liter,
  'other' => $other,
  'pound' => pound,
  'us_gallon' => usGallon,
  _ => PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit._(json),
}; }

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit chargingMinute = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit._('charging_minute');

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit imperialGallon = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit._('imperial_gallon');

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit kilogram = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit._('kilogram');

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit kilowattHour = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit._('kilowatt_hour');

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit liter = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit._('liter');

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit $other = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit._('other');

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit pound = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit._('pound');

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit usGallon = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit._('us_gallon');

static const List<PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit> values = [chargingMinute, imperialGallon, kilogram, kilowattHour, liter, $other, pound, usGallon];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit($value)'; } 
 }
@immutable final class PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuel {const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuel({this.industryProductCode, this.quantityDecimal, this.type, this.unit, this.unitCostDecimal, });

factory PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuel.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuel(
  industryProductCode: json['industry_product_code'] as String?,
  quantityDecimal: json['quantity_decimal'] as String?,
  type: json['type'] != null ? PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType.fromJson(json['type'] as String) : null,
  unit: json['unit'] != null ? PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit.fromJson(json['unit'] as String) : null,
  unitCostDecimal: json['unit_cost_decimal'] as String?,
); }

final String? industryProductCode;

final String? quantityDecimal;

final PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType? type;

final PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit? unit;

final String? unitCostDecimal;

Map<String, dynamic> toJson() { return {
  'industry_product_code': ?industryProductCode,
  'quantity_decimal': ?quantityDecimal,
  if (type != null) 'type': type?.toJson(),
  if (unit != null) 'unit': unit?.toJson(),
  'unit_cost_decimal': ?unitCostDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'industry_product_code', 'quantity_decimal', 'type', 'unit', 'unit_cost_decimal'}.contains(key)); } 
PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuel copyWith({String Function()? industryProductCode, String Function()? quantityDecimal, PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelType Function()? type, PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuelUnit Function()? unit, String Function()? unitCostDecimal, }) { return PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuel(
  industryProductCode: industryProductCode != null ? industryProductCode() : this.industryProductCode,
  quantityDecimal: quantityDecimal != null ? quantityDecimal() : this.quantityDecimal,
  type: type != null ? type() : this.type,
  unit: unit != null ? unit() : this.unit,
  unitCostDecimal: unitCostDecimal != null ? unitCostDecimal() : this.unitCostDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuel &&
          industryProductCode == other.industryProductCode &&
          quantityDecimal == other.quantityDecimal &&
          type == other.type &&
          unit == other.unit &&
          unitCostDecimal == other.unitCostDecimal; } 
@override int get hashCode { return Object.hash(industryProductCode, quantityDecimal, type, unit, unitCostDecimal); } 
@override String toString() { return 'PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuel(industryProductCode: $industryProductCode, quantityDecimal: $quantityDecimal, type: $type, unit: $unit, unitCostDecimal: $unitCostDecimal)'; } 
 }

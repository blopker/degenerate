// GENERATED CODE - DO NOT MODIFY BY HAND

/// The type of fuel that was purchased.
final class IssuingAuthorizationFuelDataType {const IssuingAuthorizationFuelDataType._(this.value);

factory IssuingAuthorizationFuelDataType.fromJson(String json) { return switch (json) {
  'diesel' => diesel,
  'other' => $other,
  'unleaded_plus' => unleadedPlus,
  'unleaded_regular' => unleadedRegular,
  'unleaded_super' => unleadedSuper,
  _ => IssuingAuthorizationFuelDataType._(json),
}; }

static const IssuingAuthorizationFuelDataType diesel = IssuingAuthorizationFuelDataType._('diesel');

static const IssuingAuthorizationFuelDataType $other = IssuingAuthorizationFuelDataType._('other');

static const IssuingAuthorizationFuelDataType unleadedPlus = IssuingAuthorizationFuelDataType._('unleaded_plus');

static const IssuingAuthorizationFuelDataType unleadedRegular = IssuingAuthorizationFuelDataType._('unleaded_regular');

static const IssuingAuthorizationFuelDataType unleadedSuper = IssuingAuthorizationFuelDataType._('unleaded_super');

static const List<IssuingAuthorizationFuelDataType> values = [diesel, $other, unleadedPlus, unleadedRegular, unleadedSuper];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingAuthorizationFuelDataType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingAuthorizationFuelDataType($value)'; } 
 }
/// The units for `quantity_decimal`.
final class IssuingAuthorizationFuelDataUnit {const IssuingAuthorizationFuelDataUnit._(this.value);

factory IssuingAuthorizationFuelDataUnit.fromJson(String json) { return switch (json) {
  'charging_minute' => chargingMinute,
  'imperial_gallon' => imperialGallon,
  'kilogram' => kilogram,
  'kilowatt_hour' => kilowattHour,
  'liter' => liter,
  'other' => $other,
  'pound' => pound,
  'us_gallon' => usGallon,
  _ => IssuingAuthorizationFuelDataUnit._(json),
}; }

static const IssuingAuthorizationFuelDataUnit chargingMinute = IssuingAuthorizationFuelDataUnit._('charging_minute');

static const IssuingAuthorizationFuelDataUnit imperialGallon = IssuingAuthorizationFuelDataUnit._('imperial_gallon');

static const IssuingAuthorizationFuelDataUnit kilogram = IssuingAuthorizationFuelDataUnit._('kilogram');

static const IssuingAuthorizationFuelDataUnit kilowattHour = IssuingAuthorizationFuelDataUnit._('kilowatt_hour');

static const IssuingAuthorizationFuelDataUnit liter = IssuingAuthorizationFuelDataUnit._('liter');

static const IssuingAuthorizationFuelDataUnit $other = IssuingAuthorizationFuelDataUnit._('other');

static const IssuingAuthorizationFuelDataUnit pound = IssuingAuthorizationFuelDataUnit._('pound');

static const IssuingAuthorizationFuelDataUnit usGallon = IssuingAuthorizationFuelDataUnit._('us_gallon');

static const List<IssuingAuthorizationFuelDataUnit> values = [chargingMinute, imperialGallon, kilogram, kilowattHour, liter, $other, pound, usGallon];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingAuthorizationFuelDataUnit && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingAuthorizationFuelDataUnit($value)'; } 
 }
/// 
final class IssuingAuthorizationFuelData {const IssuingAuthorizationFuelData({this.industryProductCode, this.quantityDecimal, this.type, this.unit, this.unitCostDecimal, });

factory IssuingAuthorizationFuelData.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationFuelData(
  industryProductCode: json['industry_product_code'] as String?,
  quantityDecimal: json['quantity_decimal'] as String?,
  type: json['type'] != null ? IssuingAuthorizationFuelDataType.fromJson(json['type'] as String) : null,
  unit: json['unit'] != null ? IssuingAuthorizationFuelDataUnit.fromJson(json['unit'] as String) : null,
  unitCostDecimal: json['unit_cost_decimal'] as String?,
); }

/// [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
final String? industryProductCode;

/// The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
final String? quantityDecimal;

/// The type of fuel that was purchased.
final IssuingAuthorizationFuelDataType? type;

/// The units for `quantity_decimal`.
final IssuingAuthorizationFuelDataUnit? unit;

/// The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
final String? unitCostDecimal;

Map<String, dynamic> toJson() { return {
  'industry_product_code': ?industryProductCode,
  'quantity_decimal': ?quantityDecimal,
  if (type != null) 'type': type?.toJson(),
  if (unit != null) 'unit': unit?.toJson(),
  'unit_cost_decimal': ?unitCostDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
IssuingAuthorizationFuelData copyWith({String? Function()? industryProductCode, String? Function()? quantityDecimal, IssuingAuthorizationFuelDataType? Function()? type, IssuingAuthorizationFuelDataUnit? Function()? unit, String? Function()? unitCostDecimal, }) { return IssuingAuthorizationFuelData(
  industryProductCode: industryProductCode != null ? industryProductCode() : this.industryProductCode,
  quantityDecimal: quantityDecimal != null ? quantityDecimal() : this.quantityDecimal,
  type: type != null ? type() : this.type,
  unit: unit != null ? unit() : this.unit,
  unitCostDecimal: unitCostDecimal != null ? unitCostDecimal() : this.unitCostDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationFuelData &&
          industryProductCode == other.industryProductCode &&
          quantityDecimal == other.quantityDecimal &&
          type == other.type &&
          unit == other.unit &&
          unitCostDecimal == other.unitCostDecimal; } 
@override int get hashCode { return Object.hash(industryProductCode, quantityDecimal, type, unit, unitCostDecimal); } 
@override String toString() { return 'IssuingAuthorizationFuelData(industryProductCode: $industryProductCode, quantityDecimal: $quantityDecimal, type: $type, unit: $unit, unitCostDecimal: $unitCostDecimal)'; } 
 }

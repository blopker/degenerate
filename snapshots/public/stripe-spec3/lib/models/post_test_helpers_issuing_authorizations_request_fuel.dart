// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersIssuingAuthorizationsRequestFuelType {const PostTestHelpersIssuingAuthorizationsRequestFuelType._(this.value);

factory PostTestHelpersIssuingAuthorizationsRequestFuelType.fromJson(String json) { return switch (json) {
  'diesel' => diesel,
  'other' => $other,
  'unleaded_plus' => unleadedPlus,
  'unleaded_regular' => unleadedRegular,
  'unleaded_super' => unleadedSuper,
  _ => PostTestHelpersIssuingAuthorizationsRequestFuelType._(json),
}; }

static const PostTestHelpersIssuingAuthorizationsRequestFuelType diesel = PostTestHelpersIssuingAuthorizationsRequestFuelType._('diesel');

static const PostTestHelpersIssuingAuthorizationsRequestFuelType $other = PostTestHelpersIssuingAuthorizationsRequestFuelType._('other');

static const PostTestHelpersIssuingAuthorizationsRequestFuelType unleadedPlus = PostTestHelpersIssuingAuthorizationsRequestFuelType._('unleaded_plus');

static const PostTestHelpersIssuingAuthorizationsRequestFuelType unleadedRegular = PostTestHelpersIssuingAuthorizationsRequestFuelType._('unleaded_regular');

static const PostTestHelpersIssuingAuthorizationsRequestFuelType unleadedSuper = PostTestHelpersIssuingAuthorizationsRequestFuelType._('unleaded_super');

static const List<PostTestHelpersIssuingAuthorizationsRequestFuelType> values = [diesel, $other, unleadedPlus, unleadedRegular, unleadedSuper];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersIssuingAuthorizationsRequestFuelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsRequestFuelType($value)'; } 
 }
final class PostTestHelpersIssuingAuthorizationsRequestFuelUnit {const PostTestHelpersIssuingAuthorizationsRequestFuelUnit._(this.value);

factory PostTestHelpersIssuingAuthorizationsRequestFuelUnit.fromJson(String json) { return switch (json) {
  'charging_minute' => chargingMinute,
  'imperial_gallon' => imperialGallon,
  'kilogram' => kilogram,
  'kilowatt_hour' => kilowattHour,
  'liter' => liter,
  'other' => $other,
  'pound' => pound,
  'us_gallon' => usGallon,
  _ => PostTestHelpersIssuingAuthorizationsRequestFuelUnit._(json),
}; }

static const PostTestHelpersIssuingAuthorizationsRequestFuelUnit chargingMinute = PostTestHelpersIssuingAuthorizationsRequestFuelUnit._('charging_minute');

static const PostTestHelpersIssuingAuthorizationsRequestFuelUnit imperialGallon = PostTestHelpersIssuingAuthorizationsRequestFuelUnit._('imperial_gallon');

static const PostTestHelpersIssuingAuthorizationsRequestFuelUnit kilogram = PostTestHelpersIssuingAuthorizationsRequestFuelUnit._('kilogram');

static const PostTestHelpersIssuingAuthorizationsRequestFuelUnit kilowattHour = PostTestHelpersIssuingAuthorizationsRequestFuelUnit._('kilowatt_hour');

static const PostTestHelpersIssuingAuthorizationsRequestFuelUnit liter = PostTestHelpersIssuingAuthorizationsRequestFuelUnit._('liter');

static const PostTestHelpersIssuingAuthorizationsRequestFuelUnit $other = PostTestHelpersIssuingAuthorizationsRequestFuelUnit._('other');

static const PostTestHelpersIssuingAuthorizationsRequestFuelUnit pound = PostTestHelpersIssuingAuthorizationsRequestFuelUnit._('pound');

static const PostTestHelpersIssuingAuthorizationsRequestFuelUnit usGallon = PostTestHelpersIssuingAuthorizationsRequestFuelUnit._('us_gallon');

static const List<PostTestHelpersIssuingAuthorizationsRequestFuelUnit> values = [chargingMinute, imperialGallon, kilogram, kilowattHour, liter, $other, pound, usGallon];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersIssuingAuthorizationsRequestFuelUnit && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsRequestFuelUnit($value)'; } 
 }
/// Information about fuel that was purchased with this transaction.
final class PostTestHelpersIssuingAuthorizationsRequestFuel {const PostTestHelpersIssuingAuthorizationsRequestFuel({this.industryProductCode, this.quantityDecimal, this.type, this.unit, this.unitCostDecimal, });

factory PostTestHelpersIssuingAuthorizationsRequestFuel.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingAuthorizationsRequestFuel(
  industryProductCode: json['industry_product_code'] as String?,
  quantityDecimal: json['quantity_decimal'] as String?,
  type: json['type'] != null ? PostTestHelpersIssuingAuthorizationsRequestFuelType.fromJson(json['type'] as String) : null,
  unit: json['unit'] != null ? PostTestHelpersIssuingAuthorizationsRequestFuelUnit.fromJson(json['unit'] as String) : null,
  unitCostDecimal: json['unit_cost_decimal'] as String?,
); }

final String? industryProductCode;

final String? quantityDecimal;

final PostTestHelpersIssuingAuthorizationsRequestFuelType? type;

final PostTestHelpersIssuingAuthorizationsRequestFuelUnit? unit;

final String? unitCostDecimal;

Map<String, dynamic> toJson() { return {
  'industry_product_code': ?industryProductCode,
  'quantity_decimal': ?quantityDecimal,
  if (type != null) 'type': type?.toJson(),
  if (unit != null) 'unit': unit?.toJson(),
  'unit_cost_decimal': ?unitCostDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostTestHelpersIssuingAuthorizationsRequestFuel copyWith({String Function()? industryProductCode, String Function()? quantityDecimal, PostTestHelpersIssuingAuthorizationsRequestFuelType Function()? type, PostTestHelpersIssuingAuthorizationsRequestFuelUnit Function()? unit, String Function()? unitCostDecimal, }) { return PostTestHelpersIssuingAuthorizationsRequestFuel(
  industryProductCode: industryProductCode != null ? industryProductCode() : this.industryProductCode,
  quantityDecimal: quantityDecimal != null ? quantityDecimal() : this.quantityDecimal,
  type: type != null ? type() : this.type,
  unit: unit != null ? unit() : this.unit,
  unitCostDecimal: unitCostDecimal != null ? unitCostDecimal() : this.unitCostDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingAuthorizationsRequestFuel &&
          industryProductCode == other.industryProductCode &&
          quantityDecimal == other.quantityDecimal &&
          type == other.type &&
          unit == other.unit &&
          unitCostDecimal == other.unitCostDecimal; } 
@override int get hashCode { return Object.hash(industryProductCode, quantityDecimal, type, unit, unitCostDecimal); } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsRequestFuel(industryProductCode: $industryProductCode, quantityDecimal: $quantityDecimal, type: $type, unit: $unit, unitCostDecimal: $unitCostDecimal)'; } 
 }

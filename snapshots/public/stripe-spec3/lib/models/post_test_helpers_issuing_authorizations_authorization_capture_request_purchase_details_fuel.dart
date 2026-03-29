// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType {const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType._(this.value);

factory PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType.fromJson(String json) { return switch (json) {
  'diesel' => diesel,
  'other' => $other,
  'unleaded_plus' => unleadedPlus,
  'unleaded_regular' => unleadedRegular,
  'unleaded_super' => unleadedSuper,
  _ => PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType._(json),
}; }

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType diesel = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType._('diesel');

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType $other = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType._('other');

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType unleadedPlus = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType._('unleaded_plus');

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType unleadedRegular = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType._('unleaded_regular');

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType unleadedSuper = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType._('unleaded_super');

static const List<PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType> values = [diesel, $other, unleadedPlus, unleadedRegular, unleadedSuper];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType($value)'; } 
 }
final class PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit {const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit._(this.value);

factory PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit.fromJson(String json) { return switch (json) {
  'charging_minute' => chargingMinute,
  'imperial_gallon' => imperialGallon,
  'kilogram' => kilogram,
  'kilowatt_hour' => kilowattHour,
  'liter' => liter,
  'other' => $other,
  'pound' => pound,
  'us_gallon' => usGallon,
  _ => PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit._(json),
}; }

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit chargingMinute = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit._('charging_minute');

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit imperialGallon = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit._('imperial_gallon');

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit kilogram = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit._('kilogram');

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit kilowattHour = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit._('kilowatt_hour');

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit liter = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit._('liter');

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit $other = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit._('other');

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit pound = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit._('pound');

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit usGallon = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit._('us_gallon');

static const List<PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit> values = [chargingMinute, imperialGallon, kilogram, kilowattHour, liter, $other, pound, usGallon];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit($value)'; } 
 }
final class PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuel {const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuel({this.industryProductCode, this.quantityDecimal, this.type, this.unit, this.unitCostDecimal, });

factory PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuel.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuel(
  industryProductCode: json['industry_product_code'] as String?,
  quantityDecimal: json['quantity_decimal'] as String?,
  type: json['type'] != null ? PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType.fromJson(json['type'] as String) : null,
  unit: json['unit'] != null ? PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit.fromJson(json['unit'] as String) : null,
  unitCostDecimal: json['unit_cost_decimal'] as String?,
); }

final String? industryProductCode;

final String? quantityDecimal;

final PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType? type;

final PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit? unit;

final String? unitCostDecimal;

Map<String, dynamic> toJson() { return {
  'industry_product_code': ?industryProductCode,
  'quantity_decimal': ?quantityDecimal,
  if (type != null) 'type': type?.toJson(),
  if (unit != null) 'unit': unit?.toJson(),
  'unit_cost_decimal': ?unitCostDecimal,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuel copyWith({String Function()? industryProductCode, String Function()? quantityDecimal, PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelType Function()? type, PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuelUnit Function()? unit, String Function()? unitCostDecimal, }) { return PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuel(
  industryProductCode: industryProductCode != null ? industryProductCode() : this.industryProductCode,
  quantityDecimal: quantityDecimal != null ? quantityDecimal() : this.quantityDecimal,
  type: type != null ? type() : this.type,
  unit: unit != null ? unit() : this.unit,
  unitCostDecimal: unitCostDecimal != null ? unitCostDecimal() : this.unitCostDecimal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuel &&
          industryProductCode == other.industryProductCode &&
          quantityDecimal == other.quantityDecimal &&
          type == other.type &&
          unit == other.unit &&
          unitCostDecimal == other.unitCostDecimal; } 
@override int get hashCode { return Object.hash(industryProductCode, quantityDecimal, type, unit, unitCostDecimal); } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFuel(industryProductCode: $industryProductCode, quantityDecimal: $quantityDecimal, type: $type, unit: $unit, unitCostDecimal: $unitCostDecimal)'; } 
 }

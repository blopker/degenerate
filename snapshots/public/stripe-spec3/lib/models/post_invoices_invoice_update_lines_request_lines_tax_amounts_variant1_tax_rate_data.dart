// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel {const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel._(this.value);

factory PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel.fromJson(String json) { return switch (json) {
  'city' => city,
  'country' => country,
  'county' => county,
  'district' => district,
  'multiple' => multiple,
  'state' => state,
  _ => PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel._(json),
}; }

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel city = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel._('city');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel country = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel._('country');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel county = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel._('county');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel district = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel._('district');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel multiple = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel._('multiple');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel state = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel._('state');

static const List<PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel> values = [city, country, county, district, multiple, state];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel($value)'; } 
 }
final class PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType {const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType._(this.value);

factory PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType.fromJson(String json) { return switch (json) {
  'amusement_tax' => amusementTax,
  'communications_tax' => communicationsTax,
  'gst' => gst,
  'hst' => hst,
  'igst' => igst,
  'jct' => jct,
  'lease_tax' => leaseTax,
  'pst' => pst,
  'qst' => qst,
  'retail_delivery_fee' => retailDeliveryFee,
  'rst' => rst,
  'sales_tax' => salesTax,
  'service_tax' => serviceTax,
  'vat' => vat,
  _ => PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType._(json),
}; }

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType amusementTax = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType._('amusement_tax');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType communicationsTax = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType._('communications_tax');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType gst = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType._('gst');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType hst = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType._('hst');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType igst = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType._('igst');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType jct = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType._('jct');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType leaseTax = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType._('lease_tax');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType pst = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType._('pst');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType qst = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType._('qst');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType retailDeliveryFee = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType._('retail_delivery_fee');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType rst = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType._('rst');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType salesTax = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType._('sales_tax');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType serviceTax = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType._('service_tax');

static const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType vat = PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType._('vat');

static const List<PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType> values = [amusementTax, communicationsTax, gst, hst, igst, jct, leaseTax, pst, qst, retailDeliveryFee, rst, salesTax, serviceTax, vat];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType($value)'; } 
 }
final class PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateData {const PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateData({this.country, this.description, required this.displayName, required this.inclusive, this.jurisdiction, this.jurisdictionLevel, required this.percentage, this.state, this.taxType, });

factory PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateData.fromJson(Map<String, dynamic> json) { return PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateData(
  country: json['country'] as String?,
  description: json['description'] as String?,
  displayName: json['display_name'] as String,
  inclusive: json['inclusive'] as bool,
  jurisdiction: json['jurisdiction'] as String?,
  jurisdictionLevel: json['jurisdiction_level'] != null ? PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel.fromJson(json['jurisdiction_level'] as String) : null,
  percentage: (json['percentage'] as num).toDouble(),
  state: json['state'] as String?,
  taxType: json['tax_type'] != null ? PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType.fromJson(json['tax_type'] as String) : null,
); }

final String? country;

final String? description;

final String displayName;

final bool inclusive;

final String? jurisdiction;

final PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel? jurisdictionLevel;

final double percentage;

final String? state;

final PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType? taxType;

Map<String, dynamic> toJson() { return {
  'country': ?country,
  'description': ?description,
  'display_name': displayName,
  'inclusive': inclusive,
  'jurisdiction': ?jurisdiction,
  if (jurisdictionLevel != null) 'jurisdiction_level': jurisdictionLevel?.toJson(),
  'percentage': percentage,
  'state': ?state,
  if (taxType != null) 'tax_type': taxType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('display_name') && json['display_name'] is String &&
      json.containsKey('inclusive') && json['inclusive'] is bool &&
      json.containsKey('percentage') && json['percentage'] is num; } 
PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateData copyWith({String Function()? country, String Function()? description, String? displayName, bool? inclusive, String Function()? jurisdiction, PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataJurisdictionLevel Function()? jurisdictionLevel, double? percentage, String Function()? state, PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateDataTaxType Function()? taxType, }) { return PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateData(
  country: country != null ? country() : this.country,
  description: description != null ? description() : this.description,
  displayName: displayName ?? this.displayName,
  inclusive: inclusive ?? this.inclusive,
  jurisdiction: jurisdiction != null ? jurisdiction() : this.jurisdiction,
  jurisdictionLevel: jurisdictionLevel != null ? jurisdictionLevel() : this.jurisdictionLevel,
  percentage: percentage ?? this.percentage,
  state: state != null ? state() : this.state,
  taxType: taxType != null ? taxType() : this.taxType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateData &&
          country == other.country &&
          description == other.description &&
          displayName == other.displayName &&
          inclusive == other.inclusive &&
          jurisdiction == other.jurisdiction &&
          jurisdictionLevel == other.jurisdictionLevel &&
          percentage == other.percentage &&
          state == other.state &&
          taxType == other.taxType; } 
@override int get hashCode { return Object.hash(country, description, displayName, inclusive, jurisdiction, jurisdictionLevel, percentage, state, taxType); } 
@override String toString() { return 'PostInvoicesInvoiceUpdateLinesRequestLinesTaxAmountsVariant1TaxRateData(country: $country, description: $description, displayName: $displayName, inclusive: $inclusive, jurisdiction: $jurisdiction, jurisdictionLevel: $jurisdictionLevel, percentage: $percentage, state: $state, taxType: $taxType)'; } 
 }

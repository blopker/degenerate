// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel {const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel._(this.value);

factory PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel.fromJson(String json) { return switch (json) {
  'city' => city,
  'country' => country,
  'county' => county,
  'district' => district,
  'multiple' => multiple,
  'state' => state,
  _ => PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel._(json),
}; }

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel city = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel._('city');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel country = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel._('country');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel county = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel._('county');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel district = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel._('district');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel multiple = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel._('multiple');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel state = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel._('state');

static const List<PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel> values = [city, country, county, district, multiple, state];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel($value)'; } 
 }
@immutable final class PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType {const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType._(this.value);

factory PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType.fromJson(String json) { return switch (json) {
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
  _ => PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType._(json),
}; }

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType amusementTax = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType._('amusement_tax');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType communicationsTax = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType._('communications_tax');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType gst = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType._('gst');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType hst = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType._('hst');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType igst = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType._('igst');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType jct = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType._('jct');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType leaseTax = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType._('lease_tax');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType pst = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType._('pst');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType qst = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType._('qst');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType retailDeliveryFee = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType._('retail_delivery_fee');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType rst = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType._('rst');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType salesTax = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType._('sales_tax');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType serviceTax = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType._('service_tax');

static const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType vat = PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType._('vat');

static const List<PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType> values = [amusementTax, communicationsTax, gst, hst, igst, jct, leaseTax, pst, qst, retailDeliveryFee, rst, salesTax, serviceTax, vat];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType($value)'; } 
 }
@immutable final class PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateData {const PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateData({required this.displayName, required this.inclusive, required this.percentage, this.country, this.description, this.jurisdiction, this.jurisdictionLevel, this.state, this.taxType, });

factory PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateData.fromJson(Map<String, dynamic> json) { return PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateData(
  country: json['country'] as String?,
  description: json['description'] as String?,
  displayName: json['display_name'] as String,
  inclusive: json['inclusive'] as bool,
  jurisdiction: json['jurisdiction'] as String?,
  jurisdictionLevel: json['jurisdiction_level'] != null ? PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel.fromJson(json['jurisdiction_level'] as String) : null,
  percentage: (json['percentage'] as num).toDouble(),
  state: json['state'] as String?,
  taxType: json['tax_type'] != null ? PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType.fromJson(json['tax_type'] as String) : null,
); }

final String? country;

final String? description;

final String displayName;

final bool inclusive;

final String? jurisdiction;

final PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel? jurisdictionLevel;

final double percentage;

final String? state;

final PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType? taxType;

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
PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateData copyWith({String Function()? country, String Function()? description, String? displayName, bool? inclusive, String Function()? jurisdiction, PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataJurisdictionLevel Function()? jurisdictionLevel, double? percentage, String Function()? state, PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateDataTaxType Function()? taxType, }) { return PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateData(
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
      other is PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateData &&
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
@override String toString() { return 'PostInvoicesInvoiceLinesLineItemIdRequestTaxAmountsVariant1TaxRateData(country: $country, description: $description, displayName: $displayName, inclusive: $inclusive, jurisdiction: $jurisdiction, jurisdictionLevel: $jurisdictionLevel, percentage: $percentage, state: $state, taxType: $taxType)'; } 
 }

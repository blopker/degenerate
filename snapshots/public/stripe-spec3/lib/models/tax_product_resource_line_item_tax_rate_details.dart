// GENERATED CODE - DO NOT MODIFY BY HAND

/// The tax type, such as `vat` or `sales_tax`.
final class TaxProductResourceLineItemTaxRateDetailsTaxType {const TaxProductResourceLineItemTaxRateDetailsTaxType._(this.value);

factory TaxProductResourceLineItemTaxRateDetailsTaxType.fromJson(String json) { return switch (json) {
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
  _ => TaxProductResourceLineItemTaxRateDetailsTaxType._(json),
}; }

static const TaxProductResourceLineItemTaxRateDetailsTaxType amusementTax = TaxProductResourceLineItemTaxRateDetailsTaxType._('amusement_tax');

static const TaxProductResourceLineItemTaxRateDetailsTaxType communicationsTax = TaxProductResourceLineItemTaxRateDetailsTaxType._('communications_tax');

static const TaxProductResourceLineItemTaxRateDetailsTaxType gst = TaxProductResourceLineItemTaxRateDetailsTaxType._('gst');

static const TaxProductResourceLineItemTaxRateDetailsTaxType hst = TaxProductResourceLineItemTaxRateDetailsTaxType._('hst');

static const TaxProductResourceLineItemTaxRateDetailsTaxType igst = TaxProductResourceLineItemTaxRateDetailsTaxType._('igst');

static const TaxProductResourceLineItemTaxRateDetailsTaxType jct = TaxProductResourceLineItemTaxRateDetailsTaxType._('jct');

static const TaxProductResourceLineItemTaxRateDetailsTaxType leaseTax = TaxProductResourceLineItemTaxRateDetailsTaxType._('lease_tax');

static const TaxProductResourceLineItemTaxRateDetailsTaxType pst = TaxProductResourceLineItemTaxRateDetailsTaxType._('pst');

static const TaxProductResourceLineItemTaxRateDetailsTaxType qst = TaxProductResourceLineItemTaxRateDetailsTaxType._('qst');

static const TaxProductResourceLineItemTaxRateDetailsTaxType retailDeliveryFee = TaxProductResourceLineItemTaxRateDetailsTaxType._('retail_delivery_fee');

static const TaxProductResourceLineItemTaxRateDetailsTaxType rst = TaxProductResourceLineItemTaxRateDetailsTaxType._('rst');

static const TaxProductResourceLineItemTaxRateDetailsTaxType salesTax = TaxProductResourceLineItemTaxRateDetailsTaxType._('sales_tax');

static const TaxProductResourceLineItemTaxRateDetailsTaxType serviceTax = TaxProductResourceLineItemTaxRateDetailsTaxType._('service_tax');

static const TaxProductResourceLineItemTaxRateDetailsTaxType vat = TaxProductResourceLineItemTaxRateDetailsTaxType._('vat');

static const List<TaxProductResourceLineItemTaxRateDetailsTaxType> values = [amusementTax, communicationsTax, gst, hst, igst, jct, leaseTax, pst, qst, retailDeliveryFee, rst, salesTax, serviceTax, vat];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxProductResourceLineItemTaxRateDetailsTaxType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxProductResourceLineItemTaxRateDetailsTaxType($value)'; } 
 }
/// 
final class TaxProductResourceLineItemTaxRateDetails {const TaxProductResourceLineItemTaxRateDetails({required this.displayName, required this.percentageDecimal, required this.taxType, });

factory TaxProductResourceLineItemTaxRateDetails.fromJson(Map<String, dynamic> json) { return TaxProductResourceLineItemTaxRateDetails(
  displayName: json['display_name'] as String,
  percentageDecimal: json['percentage_decimal'] as String,
  taxType: TaxProductResourceLineItemTaxRateDetailsTaxType.fromJson(json['tax_type'] as String),
); }

/// A localized display name for tax type, intended to be human-readable. For example, "Local Sales and Use Tax", "Value-added tax (VAT)", or "Umsatzsteuer (USt.)".
final String displayName;

/// The tax rate percentage as a string. For example, 8.5% is represented as "8.5".
final String percentageDecimal;

/// The tax type, such as `vat` or `sales_tax`.
final TaxProductResourceLineItemTaxRateDetailsTaxType taxType;

Map<String, dynamic> toJson() { return {
  'display_name': displayName,
  'percentage_decimal': percentageDecimal,
  'tax_type': taxType.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('display_name') && json['display_name'] is String &&
      json.containsKey('percentage_decimal') && json['percentage_decimal'] is String &&
      json.containsKey('tax_type'); } 
TaxProductResourceLineItemTaxRateDetails copyWith({String? displayName, String? percentageDecimal, TaxProductResourceLineItemTaxRateDetailsTaxType? taxType, }) { return TaxProductResourceLineItemTaxRateDetails(
  displayName: displayName ?? this.displayName,
  percentageDecimal: percentageDecimal ?? this.percentageDecimal,
  taxType: taxType ?? this.taxType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxProductResourceLineItemTaxRateDetails &&
          displayName == other.displayName &&
          percentageDecimal == other.percentageDecimal &&
          taxType == other.taxType; } 
@override int get hashCode { return Object.hash(displayName, percentageDecimal, taxType); } 
@override String toString() { return 'TaxProductResourceLineItemTaxRateDetails(displayName: $displayName, percentageDecimal: $percentageDecimal, taxType: $taxType)'; } 
 }

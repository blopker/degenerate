// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tax_rate_flat_amount.dart';/// Indicates the type of tax rate applied to the taxable amount. This value can be `null` when no tax applies to the location. This field is only present for TaxRates created by Stripe Tax.
@immutable final class TaxProductResourceTaxRateDetailsRateType {const TaxProductResourceTaxRateDetailsRateType._(this.value);

factory TaxProductResourceTaxRateDetailsRateType.fromJson(String json) { return switch (json) {
  'flat_amount' => flatAmount,
  'percentage' => percentage,
  _ => TaxProductResourceTaxRateDetailsRateType._(json),
}; }

static const TaxProductResourceTaxRateDetailsRateType flatAmount = TaxProductResourceTaxRateDetailsRateType._('flat_amount');

static const TaxProductResourceTaxRateDetailsRateType percentage = TaxProductResourceTaxRateDetailsRateType._('percentage');

static const List<TaxProductResourceTaxRateDetailsRateType> values = [flatAmount, percentage];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxProductResourceTaxRateDetailsRateType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxProductResourceTaxRateDetailsRateType($value)'; } 
 }
/// The tax type, such as `vat` or `sales_tax`.
@immutable final class TaxProductResourceTaxRateDetailsTaxType {const TaxProductResourceTaxRateDetailsTaxType._(this.value);

factory TaxProductResourceTaxRateDetailsTaxType.fromJson(String json) { return switch (json) {
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
  _ => TaxProductResourceTaxRateDetailsTaxType._(json),
}; }

static const TaxProductResourceTaxRateDetailsTaxType amusementTax = TaxProductResourceTaxRateDetailsTaxType._('amusement_tax');

static const TaxProductResourceTaxRateDetailsTaxType communicationsTax = TaxProductResourceTaxRateDetailsTaxType._('communications_tax');

static const TaxProductResourceTaxRateDetailsTaxType gst = TaxProductResourceTaxRateDetailsTaxType._('gst');

static const TaxProductResourceTaxRateDetailsTaxType hst = TaxProductResourceTaxRateDetailsTaxType._('hst');

static const TaxProductResourceTaxRateDetailsTaxType igst = TaxProductResourceTaxRateDetailsTaxType._('igst');

static const TaxProductResourceTaxRateDetailsTaxType jct = TaxProductResourceTaxRateDetailsTaxType._('jct');

static const TaxProductResourceTaxRateDetailsTaxType leaseTax = TaxProductResourceTaxRateDetailsTaxType._('lease_tax');

static const TaxProductResourceTaxRateDetailsTaxType pst = TaxProductResourceTaxRateDetailsTaxType._('pst');

static const TaxProductResourceTaxRateDetailsTaxType qst = TaxProductResourceTaxRateDetailsTaxType._('qst');

static const TaxProductResourceTaxRateDetailsTaxType retailDeliveryFee = TaxProductResourceTaxRateDetailsTaxType._('retail_delivery_fee');

static const TaxProductResourceTaxRateDetailsTaxType rst = TaxProductResourceTaxRateDetailsTaxType._('rst');

static const TaxProductResourceTaxRateDetailsTaxType salesTax = TaxProductResourceTaxRateDetailsTaxType._('sales_tax');

static const TaxProductResourceTaxRateDetailsTaxType serviceTax = TaxProductResourceTaxRateDetailsTaxType._('service_tax');

static const TaxProductResourceTaxRateDetailsTaxType vat = TaxProductResourceTaxRateDetailsTaxType._('vat');

static const List<TaxProductResourceTaxRateDetailsTaxType> values = [amusementTax, communicationsTax, gst, hst, igst, jct, leaseTax, pst, qst, retailDeliveryFee, rst, salesTax, serviceTax, vat];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxProductResourceTaxRateDetailsTaxType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxProductResourceTaxRateDetailsTaxType($value)'; } 
 }
/// 
@immutable final class TaxProductResourceTaxRateDetails {const TaxProductResourceTaxRateDetails({required this.percentageDecimal, this.country = const Omittable.absent(), this.flatAmount = const Omittable.absent(), this.rateType = const Omittable.absent(), this.state = const Omittable.absent(), this.taxType = const Omittable.absent(), });

factory TaxProductResourceTaxRateDetails.fromJson(Map<String, dynamic> json) { return TaxProductResourceTaxRateDetails(
  country: json.containsKey('country') ? Omittable(json['country'] as String?) : const Omittable.absent(),
  flatAmount: json.containsKey('flat_amount') ? Omittable(json['flat_amount'] != null ? TaxRateFlatAmount.fromJson(json['flat_amount'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  percentageDecimal: json['percentage_decimal'] as String,
  rateType: json.containsKey('rate_type') ? Omittable(json['rate_type'] != null ? TaxProductResourceTaxRateDetailsRateType.fromJson(json['rate_type'] as String) : null) : const Omittable.absent(),
  state: json.containsKey('state') ? Omittable(json['state'] as String?) : const Omittable.absent(),
  taxType: json.containsKey('tax_type') ? Omittable(json['tax_type'] != null ? TaxProductResourceTaxRateDetailsTaxType.fromJson(json['tax_type'] as String) : null) : const Omittable.absent(),
); }

/// Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
final Omittable<String?> country;

/// The amount of the tax rate when the `rate_type` is `flat_amount`. Tax rates with `rate_type` `percentage` can vary based on the transaction, resulting in this field being `null`. This field exposes the amount and currency of the flat tax rate.
final Omittable<TaxRateFlatAmount?> flatAmount;

/// The tax rate percentage as a string. For example, 8.5% is represented as `"8.5"`.
final String percentageDecimal;

/// Indicates the type of tax rate applied to the taxable amount. This value can be `null` when no tax applies to the location. This field is only present for TaxRates created by Stripe Tax.
final Omittable<TaxProductResourceTaxRateDetailsRateType?> rateType;

/// State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
final Omittable<String?> state;

/// The tax type, such as `vat` or `sales_tax`.
final Omittable<TaxProductResourceTaxRateDetailsTaxType?> taxType;

Map<String, dynamic> toJson() { return {
  if (country.isPresent) 'country': country.value,
  if (flatAmount.isPresent) 'flat_amount': flatAmount.value?.toJson(),
  'percentage_decimal': percentageDecimal,
  if (rateType.isPresent) 'rate_type': rateType.value?.toJson(),
  if (state.isPresent) 'state': state.value,
  if (taxType.isPresent) 'tax_type': taxType.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('percentage_decimal') && json['percentage_decimal'] is String; } 
TaxProductResourceTaxRateDetails copyWith({Omittable<String?>? country, Omittable<TaxRateFlatAmount?>? flatAmount, String? percentageDecimal, Omittable<TaxProductResourceTaxRateDetailsRateType?>? rateType, Omittable<String?>? state, Omittable<TaxProductResourceTaxRateDetailsTaxType?>? taxType, }) { return TaxProductResourceTaxRateDetails(
  country: country ?? this.country,
  flatAmount: flatAmount ?? this.flatAmount,
  percentageDecimal: percentageDecimal ?? this.percentageDecimal,
  rateType: rateType ?? this.rateType,
  state: state ?? this.state,
  taxType: taxType ?? this.taxType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxProductResourceTaxRateDetails &&
          country == other.country &&
          flatAmount == other.flatAmount &&
          percentageDecimal == other.percentageDecimal &&
          rateType == other.rateType &&
          state == other.state &&
          taxType == other.taxType; } 
@override int get hashCode { return Object.hash(country, flatAmount, percentageDecimal, rateType, state, taxType); } 
@override String toString() { return 'TaxProductResourceTaxRateDetails(country: $country, flatAmount: $flatAmount, percentageDecimal: $percentageDecimal, rateType: $rateType, state: $state, taxType: $taxType)'; } 
 }

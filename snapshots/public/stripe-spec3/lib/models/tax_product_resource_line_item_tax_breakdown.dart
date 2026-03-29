// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tax_product_resource_jurisdiction.dart';import 'tax_product_resource_line_item_tax_breakdown_tax_rate_details.dart';/// Indicates whether the jurisdiction was determined by the origin (merchant's address) or destination (customer's address).
final class TaxProductResourceLineItemTaxBreakdownSourcing {const TaxProductResourceLineItemTaxBreakdownSourcing._(this.value);

factory TaxProductResourceLineItemTaxBreakdownSourcing.fromJson(String json) { return switch (json) {
  'destination' => destination,
  'origin' => origin,
  _ => TaxProductResourceLineItemTaxBreakdownSourcing._(json),
}; }

static const TaxProductResourceLineItemTaxBreakdownSourcing destination = TaxProductResourceLineItemTaxBreakdownSourcing._('destination');

static const TaxProductResourceLineItemTaxBreakdownSourcing origin = TaxProductResourceLineItemTaxBreakdownSourcing._('origin');

static const List<TaxProductResourceLineItemTaxBreakdownSourcing> values = [destination, origin];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxProductResourceLineItemTaxBreakdownSourcing && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxProductResourceLineItemTaxBreakdownSourcing($value)'; } 
 }
/// The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
final class TaxProductResourceLineItemTaxBreakdownTaxabilityReason {const TaxProductResourceLineItemTaxBreakdownTaxabilityReason._(this.value);

factory TaxProductResourceLineItemTaxBreakdownTaxabilityReason.fromJson(String json) { return switch (json) {
  'customer_exempt' => customerExempt,
  'not_collecting' => notCollecting,
  'not_subject_to_tax' => notSubjectToTax,
  'not_supported' => notSupported,
  'portion_product_exempt' => portionProductExempt,
  'portion_reduced_rated' => portionReducedRated,
  'portion_standard_rated' => portionStandardRated,
  'product_exempt' => productExempt,
  'product_exempt_holiday' => productExemptHoliday,
  'proportionally_rated' => proportionallyRated,
  'reduced_rated' => reducedRated,
  'reverse_charge' => reverseCharge,
  'standard_rated' => standardRated,
  'taxable_basis_reduced' => taxableBasisReduced,
  'zero_rated' => zeroRated,
  _ => TaxProductResourceLineItemTaxBreakdownTaxabilityReason._(json),
}; }

static const TaxProductResourceLineItemTaxBreakdownTaxabilityReason customerExempt = TaxProductResourceLineItemTaxBreakdownTaxabilityReason._('customer_exempt');

static const TaxProductResourceLineItemTaxBreakdownTaxabilityReason notCollecting = TaxProductResourceLineItemTaxBreakdownTaxabilityReason._('not_collecting');

static const TaxProductResourceLineItemTaxBreakdownTaxabilityReason notSubjectToTax = TaxProductResourceLineItemTaxBreakdownTaxabilityReason._('not_subject_to_tax');

static const TaxProductResourceLineItemTaxBreakdownTaxabilityReason notSupported = TaxProductResourceLineItemTaxBreakdownTaxabilityReason._('not_supported');

static const TaxProductResourceLineItemTaxBreakdownTaxabilityReason portionProductExempt = TaxProductResourceLineItemTaxBreakdownTaxabilityReason._('portion_product_exempt');

static const TaxProductResourceLineItemTaxBreakdownTaxabilityReason portionReducedRated = TaxProductResourceLineItemTaxBreakdownTaxabilityReason._('portion_reduced_rated');

static const TaxProductResourceLineItemTaxBreakdownTaxabilityReason portionStandardRated = TaxProductResourceLineItemTaxBreakdownTaxabilityReason._('portion_standard_rated');

static const TaxProductResourceLineItemTaxBreakdownTaxabilityReason productExempt = TaxProductResourceLineItemTaxBreakdownTaxabilityReason._('product_exempt');

static const TaxProductResourceLineItemTaxBreakdownTaxabilityReason productExemptHoliday = TaxProductResourceLineItemTaxBreakdownTaxabilityReason._('product_exempt_holiday');

static const TaxProductResourceLineItemTaxBreakdownTaxabilityReason proportionallyRated = TaxProductResourceLineItemTaxBreakdownTaxabilityReason._('proportionally_rated');

static const TaxProductResourceLineItemTaxBreakdownTaxabilityReason reducedRated = TaxProductResourceLineItemTaxBreakdownTaxabilityReason._('reduced_rated');

static const TaxProductResourceLineItemTaxBreakdownTaxabilityReason reverseCharge = TaxProductResourceLineItemTaxBreakdownTaxabilityReason._('reverse_charge');

static const TaxProductResourceLineItemTaxBreakdownTaxabilityReason standardRated = TaxProductResourceLineItemTaxBreakdownTaxabilityReason._('standard_rated');

static const TaxProductResourceLineItemTaxBreakdownTaxabilityReason taxableBasisReduced = TaxProductResourceLineItemTaxBreakdownTaxabilityReason._('taxable_basis_reduced');

static const TaxProductResourceLineItemTaxBreakdownTaxabilityReason zeroRated = TaxProductResourceLineItemTaxBreakdownTaxabilityReason._('zero_rated');

static const List<TaxProductResourceLineItemTaxBreakdownTaxabilityReason> values = [customerExempt, notCollecting, notSubjectToTax, notSupported, portionProductExempt, portionReducedRated, portionStandardRated, productExempt, productExemptHoliday, proportionallyRated, reducedRated, reverseCharge, standardRated, taxableBasisReduced, zeroRated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxProductResourceLineItemTaxBreakdownTaxabilityReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxProductResourceLineItemTaxBreakdownTaxabilityReason($value)'; } 
 }
/// 
final class TaxProductResourceLineItemTaxBreakdown {const TaxProductResourceLineItemTaxBreakdown({required this.amount, required this.jurisdiction, required this.sourcing, this.taxRateDetails, required this.taxabilityReason, required this.taxableAmount, });

factory TaxProductResourceLineItemTaxBreakdown.fromJson(Map<String, dynamic> json) { return TaxProductResourceLineItemTaxBreakdown(
  amount: (json['amount'] as num).toInt(),
  jurisdiction: TaxProductResourceJurisdiction.fromJson(json['jurisdiction'] as Map<String, dynamic>),
  sourcing: TaxProductResourceLineItemTaxBreakdownSourcing.fromJson(json['sourcing'] as String),
  taxRateDetails: json['tax_rate_details'] != null ? TaxProductResourceLineItemTaxBreakdownTaxRateDetails.fromJson(json['tax_rate_details'] as Map<String, dynamic>) : null,
  taxabilityReason: TaxProductResourceLineItemTaxBreakdownTaxabilityReason.fromJson(json['taxability_reason'] as String),
  taxableAmount: (json['taxable_amount'] as num).toInt(),
); }

/// The amount of tax, in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
final int amount;

final TaxProductResourceJurisdiction jurisdiction;

/// Indicates whether the jurisdiction was determined by the origin (merchant's address) or destination (customer's address).
final TaxProductResourceLineItemTaxBreakdownSourcing sourcing;

/// Details regarding the rate for this tax. This field will be `null` when the tax is not imposed, for example if the product is exempt from tax.
final TaxProductResourceLineItemTaxBreakdownTaxRateDetails? taxRateDetails;

/// The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
final TaxProductResourceLineItemTaxBreakdownTaxabilityReason taxabilityReason;

/// The amount on which tax is calculated, in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
final int taxableAmount;

Map<String, dynamic> toJson() { return {
  'amount': amount,
  'jurisdiction': jurisdiction.toJson(),
  'sourcing': sourcing.toJson(),
  if (taxRateDetails != null) 'tax_rate_details': taxRateDetails?.toJson(),
  'taxability_reason': taxabilityReason.toJson(),
  'taxable_amount': taxableAmount,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('amount') && json['amount'] is num &&
      json.containsKey('jurisdiction') &&
      json.containsKey('sourcing') &&
      json.containsKey('taxability_reason') &&
      json.containsKey('taxable_amount') && json['taxable_amount'] is num; } 
TaxProductResourceLineItemTaxBreakdown copyWith({int? amount, TaxProductResourceJurisdiction? jurisdiction, TaxProductResourceLineItemTaxBreakdownSourcing? sourcing, TaxProductResourceLineItemTaxBreakdownTaxRateDetails? Function()? taxRateDetails, TaxProductResourceLineItemTaxBreakdownTaxabilityReason? taxabilityReason, int? taxableAmount, }) { return TaxProductResourceLineItemTaxBreakdown(
  amount: amount ?? this.amount,
  jurisdiction: jurisdiction ?? this.jurisdiction,
  sourcing: sourcing ?? this.sourcing,
  taxRateDetails: taxRateDetails != null ? taxRateDetails() : this.taxRateDetails,
  taxabilityReason: taxabilityReason ?? this.taxabilityReason,
  taxableAmount: taxableAmount ?? this.taxableAmount,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxProductResourceLineItemTaxBreakdown &&
          amount == other.amount &&
          jurisdiction == other.jurisdiction &&
          sourcing == other.sourcing &&
          taxRateDetails == other.taxRateDetails &&
          taxabilityReason == other.taxabilityReason &&
          taxableAmount == other.taxableAmount; } 
@override int get hashCode { return Object.hash(amount, jurisdiction, sourcing, taxRateDetails, taxabilityReason, taxableAmount); } 
@override String toString() { return 'TaxProductResourceLineItemTaxBreakdown(amount: $amount, jurisdiction: $jurisdiction, sourcing: $sourcing, taxRateDetails: $taxRateDetails, taxabilityReason: $taxabilityReason, taxableAmount: $taxableAmount)'; } 
 }
